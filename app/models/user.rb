class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable
  validates :name, { presence: true, uniqueness: true }
  def fitskills
    return Fitskill.where(user_id: self.id)
  end
end
