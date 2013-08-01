# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ActiveRecord::Base.transaction do
  #make users
  users = User.create!([{  username: 'Cookie Monster', email: 'i.love.cookies@omnomnom.com'},
    { username: 'Kermit', email: 'not.easy.being@green.com' },
    { username: 'Snuffaluffagus', email: 'ok.bert@snuffy.com'}])

  polls = Poll.create!([{ title: 'Cookie', author_id: 1 },
                        { title: 'Kermit Stuff Poll' , author_id: 2 }])

  questions = Question.create!([{ q_string: 'How much do you love cookies?', poll_id: 1 },
                                { q_string: 'What is your fav. cookie?', poll_id: 1 },
                                { q_string: 'Why are there so many songs about rainbows?', poll_id: 2 },
                                { q_string: 'Would you like to live on the moon?', poll_id: 2 }])

  choices = Choice.create!([{ ch_string: "They are the best thing in the world!", q_id:1  },
                            { ch_string: "So so much!", q_id: 1 },
                            { ch_string: "Chocolate Chip", q_id: 2 },
                            { ch_string: "Snickerdoodle", q_id: 2 },
                            { ch_string: "Mexican Wedding Cake", q_id: 2 },
                            { ch_string: "Because Kermit", q_id: 3 },
                            { ch_string: "There aren't enough, actually.", q_id: 3 },
                            { ch_string: "I would like to visit the moon.", q_id: 4 },
                            { ch_string: "I don't think I'd like to live there.", q_id: 4 }])

  responses = Response.create!([{ chooser_id: 1, choice_id: 7 },
                                { chooser_id: 1, choice_id: 8 },
                                { chooser_id: 2, choice_id: 2 },
                                { chooser_id: 2, choice_id: 3 },
                                { chooser_id: 3, choice_id: 2 },
                                { chooser_id: 3, choice_id: 4 },
                                { chooser_id: 3, choice_id: 6 },
                                { chooser_id: 3, choice_id: 9 }])

end

