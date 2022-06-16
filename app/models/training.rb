class Training < ApplicationRecord
  has_many :fitskills, dependent: :destroy
  accepts_nested_attributes_for :fitskills, allow_destroy: true
end
