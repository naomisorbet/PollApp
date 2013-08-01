class Poll < ActiveRecord::Base
  attr_accessible :title, :author_id

  validates :title, :author_id, :presence => true

  has_many(
    :questions,
    :class_name => "Question",
    :foreign_key => :poll_id,
    :primary_key => :id
  )

  belongs_to(
    :user,
    :class_name => "User",
    :foreign_key => :author_id,
    :primary_key => :id
  )
end
