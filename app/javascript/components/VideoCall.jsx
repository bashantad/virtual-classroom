import React from 'react';
import { withRouter } from 'react-router';
import { JOIN_CALL, LEAVE_CALL, EXCHANGE, ice } from '../utils/VideoCallUtil'
import callApi from "./calls/callApi";
import consumer from "../channels/consumer";

class VideoCall extends React.Component{
    constructor(props){
        super(props);
        this.pcPeers = {};
        this.remoteVideoRef = React.createRef()
        this.localVideoRef = React.createRef();
        this.userId = Math.floor(Math.random() * 10000);
    }
    _getConversationId = () => {
        return this.props.match.params.id;
    }

    broadCast = (data) => {
        callApi.broadcast(this._getConversationId(), data);
    }

    componentDidMount(){
        this.remoteVideoContainer = document.getElementById("remote-calls-container")
        navigator.mediaDevices.getUserMedia({ audio: false, video: true })
            .then(stream => {
                this.localStream = stream;
                this.localVideoRef.current.srcObject = stream;
            }).catch(error => { console.log(error) });
    }
    joinCall(e){
        consumer.subscriptions.create(
            { channel: "CallsChannel" },
            { connected: () => {
                    console.log('CONNECTED');
                    this.broadCast({ type: JOIN_CALL, from: this.userId });
                },
                received: data => {
                    console.log("RECEIVED: ", data);
                    if (data.from === this.userId) return;

                    switch (data.type) {
                        case JOIN_CALL:
                            return this.join(data);
                        case EXCHANGE:
                            if (data.to !== this.userId) return;
                            return this.exchange(data);
                        case LEAVE_CALL:
                            return this.removeUser(data);
                        default:
                            return;
                    }
                }
            });
    }

    join(data){
        this.createPC(data.from, true)
    }
    removeUser(data){
        let video = document.getElementById(`remoteVideoContainer+${data.from}`);
        video && video.remove();

        let peers = this.pcPeers
        delete peers[data.from]
    }

    createPC(userId, offerBool){
        const pc = new RTCPeerConnection(ice);

        this.pcPeers[userId] = pc;
        this.localStream.getTracks().forEach(track => pc.addTrack(track, this.localStream));
        if (offerBool) {
            pc.createOffer().then(offer => {
                pc.setLocalDescription(offer).then(() => {
                    setTimeout( ()=>{
                        this.broadCast({
                            type: EXCHANGE,
                            from: this.userId,
                            to: userId,
                            sdp: JSON.stringify(pc.localDescription),
                        })

                    }, 0);
                })
            })
        }
        pc.onicecandidate = (e) => {
            this.broadCast({
                type: EXCHANGE,
                from: this.userId,
                to: userId,
                sdp: JSON.stringify(e.candidate)
            })
        };
        pc.ontrack = (e) => {
            const remoteVid = document.createElement("video");
            remoteVid.id = `remoteVideoContainer+${userId}`;
            remoteVid.autoplay = "autoplay";
            remoteVid.srcObject = e.streams[0];
            this.remoteVideoContainer.appendChild(remoteVid);
        };
        pc.oniceconnectionstatechange = (e) => {
            if (pc.iceConnectionState === 'disconnected') {
                this.broadCast({
                    type: LEAVE_CALL,
                    from: userId,
                });
            }
        }
        return pc;
    };
    leaveCall(e){
        const pcKeys = Object.keys(this.pcPeers);
        for (let i = 0; i < pcKeys.length; i++) {
            this.pcPeers[pcKeys[i]].close();
        }
        this.pcPeers = {};
        this.localVideo.srcObject.getTracks().forEach(function (track) {
            track.stop();
        })
        this.localVideo.srcObject = null;
        App.cable.subscriptions.subscriptions = [];
        this.remoteVideoContainer.innerHTML = "";
        this.broadCast({
            type: LEAVE_CALL,
            from: this.userId
        });
    }


    exchange(data) {
        let pc;
        if (this.pcPeers[data.from]) {
            pc = this.pcPeers[data.from];
        } else {
            pc = this.createPC(data.from, false);
        }
        if (data.candidate) {
            let candidate = JSON.parse(data.candidate)
            pc.addIceCandidate(new RTCIceCandidate(candidate))
        }
        if (data.sdp) {
            const sdp = JSON.parse(data.sdp);
            if (sdp && !sdp.candidate) {
                pc.setRemoteDescription(sdp)
                    .then(() => {
                        if (sdp.type === 'offer') {
                            pc.createAnswer()
                                .then(answer => {
                                    pc.setLocalDescription(answer)
                                        .then(() => {

                                            this.broadCast({
                                                type: EXCHANGE,
                                                from: this.userId,
                                                to: data.from,
                                                sdp: JSON.stringify(pc.localDescription)
                                            });

                                        })
                                })
                        }
                    })
            }
        }
    }
    render() {
        return(<div className="VideoCall">
            <div id="remote-calls-container"></div>
            <video ref={this.localVideoRef} autoPlay></video>
            <button onClick={this.joinCall.bind(this)}>Join Call</button>
            <button onClick={this.leaveCall.bind(this)}>Leave Call</button>
        </div>)
    }
}

export default withRouter(VideoCall);
