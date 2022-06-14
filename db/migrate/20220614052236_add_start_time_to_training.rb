class AddStartTimeToTraining < ActiveRecord::Migration[6.1]
  def up
    add_column :trainings, :start_time, :datetime
  end

  def down
    remove_column :trainings, :create_date, :date
  end
end
