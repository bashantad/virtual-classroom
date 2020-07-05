class User < ApplicationRecord
    include ImageUpload
    include Rails.application.routes.url_helpers
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, :confirmable
    has_many :conversation_enrolled_users
    has_many :conversations, through: :conversation_enrolled_users
    has_many :enrolled_course_users
    has_many :enrolled_courses, through: :enrolled_course_users, source: :course
    has_many :messages, foreign_key: :sender_id
    has_many :user_message_notifications
    has_many :notification_messages, through: :user_message_notifications, source: :message
    has_many :courses
    has_many :enroll_requests
    has_many :calls
    has_many :reviews
    has_one_attached :avatar_image, dependent: :destroy

    validate :acceptable_image
    validates :full_name, presence: true

    def avatar_image_urls
      rails_blob_path(self.avatar_image, disposition: "attachment", only_path: true) if self.avatar_image.present?
    end

    def is_within_call_limit?
        self.calls.created_between(1.months.ago, Time.now).count < self.call_limit_per_month
    end

    def soft_delete
      update_attribute(:deleted_at, Time.current)
    end

    def active_for_authentication?
      super && !deleted_at
    end
end
