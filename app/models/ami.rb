class Ami < ApplicationRecord
  belongs_to :category
  validates :nom, :prenom, :mail, :adresse, :category_id, presence: true
end
