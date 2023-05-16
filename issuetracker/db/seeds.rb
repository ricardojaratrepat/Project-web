# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Tag.destroy_all
Ticket.destroy_all
User.destroy_all
Solution.destroy_all
Comment.destroy_all
AdminUser.destroy_all
ExecutiveUser.destroy_all
RequestingUser.destroy_all
SupervisorUser.destroy_all
PerformanceReport.destroy_all
Document.destroy_all

tags = Tag.create([
    {name: "Bug"},
    {name: "Feature"},
    {name: "Support"},
    {name: "Question"},
    {name: "Other"},
    {name: "Critical"}
])

#users
users = User.create([
    {email: "hola@gmail.com", name: "ricardo", lastname: "jara", password: "123456"},
    {email: "adios@gmail.com", name: "catalina", lastname: "vergara", password: "4568"},
    {email: "quetal@gmail.com", name: "rodrigo", lastname: "vildosola", password: "09876"},
    {email: "palta@gmail.com", name: "jesucristo", lastname: "coco", password: "completoItaliano123"}
])
