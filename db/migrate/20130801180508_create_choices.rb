class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :ch_string
      t.integer :q_id

      t.timestamps
    end
  end
end
