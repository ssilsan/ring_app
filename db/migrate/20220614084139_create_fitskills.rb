class CreateFitskills < ActiveRecord::Migration[6.1]
  def change
    create_table :fitskills do |t|
      t.string :category
      t.string :fitskill
      t.integer :count
      t.integer :user_id
      t.timestamps
    end
  end
end
