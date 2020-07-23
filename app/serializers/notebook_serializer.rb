class NotebookSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :user
  has_many :notes
end