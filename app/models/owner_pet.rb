class OwnerPet < ApplicationRecord
    belongs_to :owners
    belongs_to :pets
end
