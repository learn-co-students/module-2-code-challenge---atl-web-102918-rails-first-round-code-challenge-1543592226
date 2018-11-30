class Heroine < ApplicationRecord
  belongs_to :power
  validates :power, uniqueness: true
  validates :super_name, uniqueness: true
end
