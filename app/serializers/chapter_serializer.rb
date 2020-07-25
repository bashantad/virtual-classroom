class ChapterSerializer < ApplicationSerializer
  attributes :id, :title
  has_many :course_contents
  has_many :assignments
end
