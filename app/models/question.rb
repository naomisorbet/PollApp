class Question < ActiveRecord::Base
  attr_accessible :q_string, :poll_id

  validates :q_string, :poll_id, :presence => true

  belongs_to(
    :poll,
    :class_name => "Poll",
    :foreign_key => :poll_id,
    :primary_key => :id
  )

  has_many(
    :choices,
    :class_name => "Choice",
    :foreign_key => :q_id,
    :primary_key => :id
  )

  has_many(
    :responses,
    :through => :choices,
    :source => :responses
  )

end
