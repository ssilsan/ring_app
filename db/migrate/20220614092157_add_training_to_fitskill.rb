class AddTrainingToFitskill < ActiveRecord::Migration[6.1]
  def change
    add_reference :fitskills, :training, null: false, foreign_key: true
  end
end
