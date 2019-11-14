class Owner < ApplicationRecord
    has_many :ownerpet
    has_many :pets, through: :ownerpet
    has_many :events, through: :pets
end
