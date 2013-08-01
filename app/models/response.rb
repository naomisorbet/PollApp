# class ResponseValidator < ActiveModel::EachValidator
#   #check if user is author
#   #or if user has already responded
#   def validate_each()
#
#   end
# end

class Response < ActiveRecord::Base
  attr_accessible :chooser_id, :choice_id

  validates :chooser_id, :choice_id, :presence => true
  validate :validate_responder_not_author, :validate_not_yet_responded

  def validate_responder_not_author
    if chooser_id == question.poll.author_id
      errors.add(:chooser_id, "author can't respond to own question")
    end
  end

  def validate_not_yet_responded
    puts "validator is running"
    responders = question.responses.map{ |r| r.chooser_id }
    if responders.include?(self.chooser_id)
      errors.add(:chooser_id, "you can only respond one time")
    end
  end

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

  has_one(
    :question, :through => :choice,
    :source => :question
  )

end
