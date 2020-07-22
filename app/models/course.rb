class Course < ApplicationRecord
	include ImageUpload
	belongs_to :owner, foreign_key: :user_id, class_name: 'User'
	belongs_to :category
	has_many :conversations
	has_many :enrolled_course_users
	has_many :enroll_requests
	has_many :enrolled_users, through: :enrolled_course_users, source: :user
	has_many :reviews, -> { order "created_at desc" }, as: :reviewable
	has_many :chapters
	has_one_attached :cover_image, dependent: :destroy
	scope :approved, -> { where(approved: true) }

	validates :title, :body, :short_description, :course_highlights, :course_for, :price, :category, :duration, :no_of_lessons, :level, presence: true

	def image_urls
		resized_images(self.cover_image)
	end

	def approve
		unless self.conversations.exists?
			_enroll_in_general_conversation(self.owner)
		end
		update(:approved => true)
	end

	def disapprove
		update(:approved => false)
	end

	def approved_text
		approved ? 'Yes' : 'No'
	end

	def show_url
		"/courses/#{self.id}"
	end

	def general_conversation
		self.conversations.find_or_create_by(title: 'General', is_group: true)
	end

	#TODO move this to CourseService, but we need to make sure it can be called from here
	def _enroll_in_general_conversation(user)
		self.enrolled_course_users.create(user_id: user.id)
		conversation = self.general_conversation
		conversation.conversation_enrolled_users.create(user_id: user.id)
	end
end
