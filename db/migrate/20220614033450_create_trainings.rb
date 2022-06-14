class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.integer :mileage
      t.integer :kcal
      t.date :created_date

      t.timestamps
    end
  end
end
