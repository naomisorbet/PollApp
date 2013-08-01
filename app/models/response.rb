class Response < ActiveRecord::Base
  attr_accessible :chooser_id, :choice_id

  validates :chooser_id, :choice_id, :presence => true

  belongs_to(
    :choice,
    :class_name => "Choice",
    :foreign_key => :choice_id,
    :primary_key => :id
  )

  belongs_to(
    :chooser,
    :class_name => "User",
    :foreign_key => :chooser_id,
    :primary_key => :id
  )

end
