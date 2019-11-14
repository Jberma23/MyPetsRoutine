require 'faker'


# Owner.create!(
#     first_name: Faker::Name.first_name, 
#     last_name: Faker::Name.last_name,
#     username: Faker::Internet.username, 
#     password: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true)
# )
# Pet.create!(
#     name: Faker::Creature::Dog.name,
#     animal: "Dog"
# )
OwnerPet.create!(
    owner_id: Owner.all.sample.id,
    pet_id: Pet.all.sample.id
)