class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :chooser_id
      t.integer :choice_id

      t.timestamps
    end
  end
end
