class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :q_string
      t.integer :poll_id

      t.timestamps
    end
  end
end
