import React from 'react';
import PropTypes from 'prop-types';
import { withRouter } from 'react-router';
import Grid from '@material-ui/core/Grid';
import Dialog from '@material-ui/core/Dialog';

import './Chat.css';
import { DialogTitle, DialogContent } from '../components/chat/ChatStyle';
import PeopleInTheChat from '../components/chat/PeopleInTheChat';
import ActiveMessageArea from '../components/chat/ActiveMessageArea';
import NewMessage from '../components/chat/NewMessage';
import courseApi from './chat/courseApi';
import conversationApi from './chat/conversationApi';
import Cable from './chat/Cable';

export class Chat extends React.Component {
    state = {
        conversations: [],
        activeConversationId: null,
        enrolledUsers: [],
        name: null,
    };

    _getCourseId = () => {
        return this.props.match.params.id;
    }

    componentDidMount = () => {
        courseApi.getById(this._getCourseId())
            .then(res => res.json())
            .then(courseDetails => {
                const {conversations, enrolled_users, name} = courseDetails;
                this.setState({
                    conversations: conversations,
                    enrolledUsers: enrolled_users,
                    activeConversationId: conversations[0].id,
                    name: name,
                 });
            });
    }

    handleReceivedMessage = (response) => {
        const {message} = response;
        const {conversations} = this.state;
        const conversation = conversations.find(
            item => item.id === message.conversation_id
        );
        conversation.messages = [...conversation.messages, message];
        this.setState({conversations});
    }

    findActiveConversation = () => {
        return this.state.conversations.find(
            conversation => conversation.id === this.state.activeConversationId
        );
    }

    handleConversationClick = (conversationId) => {
        this.setState({activeConversationId: conversationId})
    }

    handleUserClick = (userId) => {
        conversationApi.create(this._getCourseId(), userId)
            .then(res => res.json())
            .then(conversation => {
                const update_attributes = {
                    activeConversationId: conversation.id
                };
                const doesConversationExist = this.state.conversations.some(item => item.id === conversation.id);
                if(!doesConversationExist) {
                    const conversations = [...this.state.conversations, conversation];
                    update_attributes.conversations = conversations;
                }
                this.setState(update_attributes);
            });
    }
    render() {
        const {conversations, enrolledUsers, activeConversationId, name} = this.state;
        const {open, handleClose} = this.props;
        const peopleInTheChatProps = {
            conversations: conversations,
            enrolledUsers: enrolledUsers,
            activeConversationId: activeConversationId,
            handleConversationClick: this.handleConversationClick,
            handleUserClick: this.handleUserClick,
        };

        return (
            <div>
                {
                    conversations.length ?
                    <Cable
                        conversations={conversations}
                        handleReceivedMessage={this.handleReceivedMessage}
                    />
                    : null
                }
                <Dialog onClose={handleClose} aria-labelledby="customized-dialog-title" open={open} fullWidth>
                    <DialogTitle id="customized-dialog-title" onClose={handleClose}>
                        {name}
                    </DialogTitle>
                    <DialogContent dividers>
                        <Grid container spacing={1} className='chat-window'>
                            <Grid item xs={4}>
                                <PeopleInTheChat {...peopleInTheChatProps}/>
                            </Grid>

                            <Grid item xs={8}>
                                <ActiveMessageArea activeConversation={this.findActiveConversation()}/>
                                <NewMessage conversationId={activeConversationId}/>
                            </Grid>
                        </Grid>
                    </DialogContent>
                </Dialog>
            </div>
        );
    }
};

Chat.propTypes = {
    open: PropTypes.bool.isRequired,
    handleClose: PropTypes.func.isRequired
};

export default withRouter(Chat);
