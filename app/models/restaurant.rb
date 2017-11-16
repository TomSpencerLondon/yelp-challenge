class Restaurant < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 5 }                    
  has_many :reviews, dependent: :destroy
end
