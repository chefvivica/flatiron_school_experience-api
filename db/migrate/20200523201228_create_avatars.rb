class CreateAvatars < ActiveRecord::Migration[6.0]
  def change
    create_table :avatars do |t|
      t.integer :user_id
      t.string :name
      t.integer :turns
      t.integer :skills
      t.integer :points

      t.timestamps
    end
  end
end
