class Fitskill < ApplicationRecord
  belongs_to :training

  def user
    return User.find_by(id: self.user_id)
  end
end
