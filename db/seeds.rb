puts "🌱 Seeding spices..."

20.times do
    dog = Dog.create(
        name: Faker::Creature::Dog.name, 
        breed: Faker::Creature::Dog.breed, 
        age: rand(1..15),
        trait: Faker::Emotion.adjective
    )
    
end

20.times do
    applicant = Applicant.create(
        name: Faker::Name.name,
        job: Faker::Job.title,
        city: Faker::Address.city,
        dog_id: Dog.all.sample.id,
        pets_owned: rand(1..10)
    )
end
# Seed your database here
#added comment to test repository 


puts "✅ Done seeding!"
