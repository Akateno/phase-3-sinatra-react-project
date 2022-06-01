puts "🌱 Seeding spices..."

# 20.times do
#     dog = Dog.create(
#         name: Faker::Creature::Dog.name, 
#         breed: Faker::Creature::Dog.breed, 
#         age: rand(1..15),
#         trait: Faker::Emotion.adjective
#     )
    
# end

dog1 = Dog.create(name: "Bella", breed:"French", age: 2, trait: "Curious", image:"https://images.unsplash.com/photo-1616312513065-28cf4313abda?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHw%3D&w=1000&q=80" )
dog2 = Dog.create(name: "Tony", breed:"Beagle", age: 1, trait: "Couragous", image:"https://images.unsplash.com/photo-1611306133736-56a3b973b2cc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhZ2xlJTIwZG9nfGVufDB8fDB8fA%3D%3D&w=1000&q=80")
dog3 = Dog.create(name: "Cooper", breed:"Husky", age: 3, trait: "Hyper", image: "https://images.unsplash.com/photo-1617895153857-82fe79adfcd4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80")
dog4 = Dog.create(name: "Finn", breed:"Mix", age: 2, trait: "Loyal", image: "https://images.unsplash.com/photo-1600525334864-9e6c8ed189d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHw%3D&w=1000&q=80")
dog5 = Dog.create(name: "Coco", breed:"Boxer", age: 2, trait: "Hyperx2", image: "https://images.unsplash.com/photo-1593620659530-7f98c53de278?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Ym94ZXIlMjBwdXBweXxlbnwwfHwwfHw%3D&w=1000&q=80")
dog6 = Dog.create(name: "Ginger", breed:"Pug", age: 1, trait: "Squished", image: "https://images.unsplash.com/photo-1587245976235-8967aa9277a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHVnJTIwZG9nfGVufDB8fDB8fA%3D%3D&w=1000&q=80")
dog7 = Dog.create(name: "Loki", breed:"Mix", age: 2, trait: "Long Boi", image: "https://i.pinimg.com/originals/56/5e/a8/565ea838dbf51b0f167791a7b75be266.png")
dog7 = Dog.create(name: "Polkadot", breed:"Dalmatian", age: 6, trait: "Tall", image: "https://images.unsplash.com/photo-1562771968-1e10d4eee4d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80")


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
