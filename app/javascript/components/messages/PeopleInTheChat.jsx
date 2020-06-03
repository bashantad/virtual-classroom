import React from 'react';
import PropTypes from 'prop-types';
import AccountCircleIcon from '@material-ui/icons/AccountCircle';
import Group from '@material-ui/icons/Group';
import AddCircle from '@material-ui/icons/AddCircle';
import './PeopleInTheChat.scss';

import Drawer from '@material-ui/core/Drawer';
import List from '@material-ui/core/List';
import ListItem from '@material-ui/core/ListItem';
import ListItemIcon from '@material-ui/core/ListItemIcon';
import ListItemText from '@material-ui/core/ListItemText';
import AddCircleIcon from '@material-ui/icons/AddCircle';
import GroupIcon from '@material-ui/icons/Group';
import Divider from '@material-ui/core/Divider';

export default class PeopleInTheChat extends React.Component {
    handleConversationClick = (conversationId) => {
        this.props.handleConversationClick(conversationId);
    }
    handleUserClick = (mappingPersonToConversation, userId) => {
        const conversationId = mappingPersonToConversation[userId];
        if(conversationId) {
            this.handleConversationClick(conversationId);
        } else {
            this.props.handleUserClick(userId);
        }
    }

    _getMappingPersonToConversation = (individualConversations) => {
        const currentUserMapping = {};
        const mapping =  individualConversations.reduce((accumulator, conversation) => {
            const conversationEnrolledUsers = conversation.conversation_enrolled_users;
            if(conversationEnrolledUsers.length === 1) {
                const conversationEnrolledUser = conversationEnrolledUsers[0];
                currentUserMapping[conversationEnrolledUser.user_id] = conversationEnrolledUser.conversation_id;
            }
            conversationEnrolledUsers.forEach((convUser) => {
                if(convUser.user_id !== this.props.currentUserId) {
                    accumulator[convUser.user_id] = convUser.conversation_id
                }
            })
            return accumulator;
        }, {});
        const currentUserKey = Object.keys(currentUserMapping)[0];
        if(currentUserKey) {
            mapping[currentUserKey] = currentUserMapping[currentUserKey];
        }
        return mapping;
    }

    getActiveClass = (conversationId) => {
        return conversationId === this.props.activeConversationId;
    }

    renderIndividualPerson = (user, mappingPersonToConversation) => {
        const conversationId = mappingPersonToConversation[user.id];
        return (
            <ListItem button key={`person-${user.id}-conversation-${conversationId}`} onClick={() => this.handleUserClick(mappingPersonToConversation, user.id)}  className='message-list-item' selected={this.getActiveClass(conversationId)}>
    <ListItemIcon><AccountCircleIcon /></ListItemIcon>
        <ListItemText primary={user.full_name} className="list-title"/>
                {this.renderNotification(conversationId)}
        </ListItem>

        );
    }

    renderNotification = (conversationId) => {
        const {messageNotificationMap} = this.props;
        return (
            messageNotificationMap[conversationId] &&
                <span className='no-of-messages'>
                    {messageNotificationMap[conversationId].length}

                </span>
        );
    }

    renderGroupConversation = (conversation) => {
        const {title, id} = conversation;
        return (
            <ListItem button key={id} onClick={() => this.handleConversationClick(id)} className='message-list-item' selected={this.getActiveClass(id)}>
    <ListItemIcon><GroupIcon /></ListItemIcon>
        <ListItemText primary={title} className="list-title" />
                {this.renderNotification(id)}
        </ListItem>
        );
    }

    render() {
        const {conversations, enrolledUsers, messageNotificationMap, individualConversations} = this.props;
        const groupConversations = conversations.filter(conv => conv.is_group);
        const mappingPersonToConversation = this._getMappingPersonToConversation(individualConversations);

        return (
            <Drawer variant="permanent"  className="drawer">
                <div className="drawer-container">
                <List>
                    <ListItem button onClick={() => this.props.handleCreateCourseGroup()}  className='message-list-item'>
                        <ListItemIcon><AddCircleIcon /></ListItemIcon>
                        <ListItemText primary='Create a new group' className="list-title"/>
                    </ListItem>
                    <Divider />
                {
                    groupConversations.map(conversation => this.renderGroupConversation(conversation, messageNotificationMap))
                }
                    <Divider />
                {
                    enrolledUsers.map(user => this.renderIndividualPerson(user, mappingPersonToConversation))
                }
                </List>
                </div>
            </Drawer>
		);
	}
}

PeopleInTheChat.propTypes = {
    handleCreateCourseGroup: PropTypes.func.isRequired,
    handleConversationClick: PropTypes.func.isRequired,
    handleUserClick: PropTypes.func.isRequired,
    conversations: PropTypes.array.isRequired,
    individualConversations: PropTypes.array.isRequired,
    enrolledUsers: PropTypes.array.isRequired,
    currentUserId: PropTypes.number,
    messageNotificationMap: PropTypes.object.isRequired,
};
