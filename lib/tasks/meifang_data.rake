namespace :db do
  desc "Fill database with maifang data"
  task populate: :environment do
    Category.create!(name: "Lorem Ipsum")
    9.times do |n|
      name = Faker::Name.name
      Category.create!(name: name)
    end

    categories = Category.all(limit: 5)
    20.times do

    end
  end
end
