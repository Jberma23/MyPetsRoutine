class Pet < ApplicationRecord
    has_many :owner_pets
    has_many :owners, through: :owner_pets
    has_many :events
end
