# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user1 = User.create!(
  email: "admin@email.com",
  password: "password",
  number: "9016587961",
  gender: "Male",
  address: "3341 Southern Ave",
  age: "25",
  profession: "Actor",
  accounttype: "admin"
)

user2 = User.create!(
  email: "ram@email.com",
  password: "password",
  number: "9016587961",
  gender: "Male",
  address: "3341 Southern Ave",
  age: "25",
  profession: "Actor",
  accounttype: "customer"
)
user3 = User.create!(
  email: "revanth@email.com",
  password: "password",
  number: "9016587961",
  gender: "Male",
  address: "3341 Southern Ave",
  age: "25",
  profession: "Actor",
  accounttype: "customer"
)
user4 = User.create!(
  email: "bob@email.com",
  password: "password",
  number: "9016587961",
  gender: "Male",
  address: "3341 Southern Ave",
  age: "25",
  profession: "Actor",
  accounttype: "customer"
)


user3 = User.create!(
  email: "alice@email.com",
  password: "password",
  accounttype: "customer"
)


diary1 = Diary.create!(
    name: "revanth's diary",
    description: "it is a good diary ",
    deadline: DateTime.now+0.003,
    price: 100,

    creator: user1
    )
    diary1.figure_image.attach(io: File.open(Rails.root.join('app/assets/images/exp1.jpg')), filename: 'exp1.jpg')

diary2 = Diary.create!(
    name: "smynicas's diary",
    description: "it is a good diary ",
    deadline: DateTime.now+0.003,
    price: 100,
    creator: user1
    )
    diary2.figure_image.attach(io: File.open(Rails.root.join('app/assets/images/exp1.jpg')), filename: 'exp1.jpg')
diary3 = Diary.create!(
    name: "meghanas's diary",
    description: "it is a good diary ",
    deadline: DateTime.now+0.003,
    price: 100,
    creator: user1
    )
    diary3.figure_image.attach(io: File.open(Rails.root.join('app/assets/images/exp1.jpg')), filename: 'exp1.jpg')

    diary4 = Diary.create!(
        name: "revanth's diary",
        description: "it is a good diary ",
        deadline: DateTime.now+0.003,
        price: 100,
        creator: user1
        )
        diary4.figure_image.attach(io: File.open(Rails.root.join('app/assets/images/exp1.jpg')), filename: 'exp1.jpg')
    
    diary5 = Diary.create!(
        name: "smynicas's diary",
        description: "it is a good diary ",
        deadline: DateTime.now+0.003,
        price: 100,
        creator: user1
        )
        diary5.figure_image.attach(io: File.open(Rails.root.join('app/assets/images/exp1.jpg')), filename: 'exp1.jpg')
    diary6 = Diary.create!(
        name: "meghanas's diary",
        description: "it is a good diary ",
        deadline: DateTime.now+0.003,
        price: 100,
        creator: user1
        )
        diary6.figure_image.attach(io: File.open(Rails.root.join('app/assets/images/exp1.jpg')), filename: 'exp1.jpg')
    