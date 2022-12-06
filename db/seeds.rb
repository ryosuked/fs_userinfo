# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if AdminUser.all.empty?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
end

if User.all.empty?
  user_personal = UserPersonal.create(
    user: User.create(name: "Jhon"),
    first_name: "Jhon",
    last_name: "King",
    sex: User.sexes["male"],
    age: 19,
  )
end
