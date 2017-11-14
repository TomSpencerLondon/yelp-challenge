class Restaurant < ApplicationRecord
<<<<<<< HEAD

  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 5 }                    

=======
  has_many :reviews, dependent: :destroy
>>>>>>> 350e28ea6a0281586924071faa9645fa5bed1679
end
