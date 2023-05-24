# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
20.times do
  Post.create(
    title: Faker::Fantasy::Tolkien.race,
    author_user: Faker::Fantasy::Tolkien.character,
    description: Faker::Fantasy::Tolkien.poem,
    image: Faker::Placeholdit.image(size: '300x300', format: 'jpg', background_color: :random, text_color: :random, text: Faker::Movies::Hobbit.thorins_company),
    likes: rand(0..15)
  )
end