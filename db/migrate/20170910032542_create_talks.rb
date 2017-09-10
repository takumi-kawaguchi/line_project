class CreateTalks < ActiveRecord::Migration[5.1]
  def change
    create_table :talks do |t|
      t.integer :first_user_id
      t.integer :second_user_id

      t.timestamps
    end
  end
end
