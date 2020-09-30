class Category < ApplicationRecord
  has_many :amis
  validates :name, presence: true
end
