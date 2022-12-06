# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Role.all.empty?
  manage_admin_user_grant = Grant.create(name: :manage_admin_user_grant)
  manage_personal_grant = Grant.create(name: :manage_personal)
  read_personal_grant = Grant.create(name: :read_personal_grant)
  manage_user_identification_grant = Grant.create(name: :manage_user_identification)

  administrator_role = Role.create(name: :administrator)
  manager_role = Role.create(name: :manager)

  RoleGrant.create(role: administrator_role, grant: manage_admin_user_grant)
  RoleGrant.create(role: administrator_role, grant: manage_personal_grant)
  RoleGrant.create(role: administrator_role, grant: manage_user_identification_grant)

  RoleGrant.create(role: manager_role, grant: read_personal_grant)
  RoleGrant.create(role: manager_role, grant: manage_user_identification_grant)
end

if AdminUser.all.empty?
  admin_user = AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
  ManagerRole.create(admin_user: admin_user, role: Role.find_by(name: :administrator))
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
