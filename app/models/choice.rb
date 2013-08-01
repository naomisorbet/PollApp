class Choice < ActiveRecord::Base
  attr_accessible :ch_string, :q_id

  validates :ch_string, :q_id. :presence => true

  belongs_to(
    :question,
    :class_name => "Question",
    :foreign_key => :q_id,
    :primary_key => :id
  )

  has_many(
    :response,
    :class_name => "Response",
    :foreign_key => :choice_id,
    :primary_key => :id
  )

end
