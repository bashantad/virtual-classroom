class Api::ConversationsController < Api::BaseController
	before_action :set_course

	def create
		other_user = @course.enrolled_users.find(message_params[:other_user_id])
		conversation = CourseService.new(@course).find_or_create_one_on_one_conversation(current_user, other_user)
		if conversation
			render json: conversation, include: ['conversation_users', 'messages', 'messages.sender']
		end
	end

	#TODO when a request comes in with more than one person(group)
	def create_group

	end

	private

	def message_params
		params.permit(:other_user_id)
	end
end
