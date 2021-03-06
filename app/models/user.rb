class User < ActiveRecord::Base
  attr_accessible :username, :email

  validates :username, :email, :presence => true,
    :uniqueness => true

  has_many(
    :polls,
    :class_name => "Poll",
    :foreign_key => :author_id,
    :primary_key => :id
  )

  has_many(
    :responses,
    :class_name => "Response",
    :foreign_key => :chooser_id,
    :primary_key => :id
  )

  has_many(
    :choices,
    :through => :responses,
    :source => :choice
  )

end
