puts "🌱 Seeding spices..."

# 20.times do
#     dog = Dog.create(
#         name: Faker::Creature::Dog.name, 
#         breed: Faker::Creature::Dog.breed, 
#         age: rand(1..15),
#         trait: Faker::Emotion.adjective
#     )
    
# end

dog1 = Dog.create(name: "Bella", breed:"French", age: 2, trait: "Curious", image:"https://www.akc.org/wp-content/uploads/2017/11/French-Bulldog-standing-outdoors.jpg" )
dog2 = Dog.create(name: "Tony", breed:"Beagle", age: 1, trait: "Couragous", image:"https://www.akc.org/wp-content/uploads/2016/06/Beagle-standing-in-a-frosty-field-on-a-cold-morning.jpg")
dog3 = Dog.create(name: "Cooper", breed:"Husky", age: 3, trait: "Hyper", image: "https://images.unsplash.com/photo-1617895153857-82fe79adfcd4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80")
dog4 = Dog.create(name: "Finn", breed:"Mix", age: 2, trait: "Loyal", image: "https://upload.wikimedia.org/wikipedia/commons/1/1e/Mongrel.jpg")
dog5 = Dog.create(name: "Coco", breed:"Boxer", age: 2, trait: "Hyperx2", image: "https://vetstreet-brightspot.s3.amazonaws.com/20/cf06c09e9111e0a2380050568d634f/file/boxer-5-645mk062411.jpg")
dog6 = Dog.create(name: "Ginger", breed:"Pug", age: 1, trait: "Squished", image: "https://cdn-prd.content.metamorphosis.com/wp-content/uploads/sites/2/2020/01/shutterstock_1268241238-2-768x512.jpg")
dog7 = Dog.create(name: "Loki", breed:"Mix", age: 2, trait: "Long Boi", image: "https://www.pitpat.com/wp-content/uploads/2020/11/Dog_-rights_MS_outdoors_stationary_-sitting-on-street_black_tan_white-dog-1024x768.jpg")


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
