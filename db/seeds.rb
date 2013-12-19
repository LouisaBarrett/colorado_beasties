# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  # Category.create(name: 'Birds') unless Category.exists?(name: 'Birds')
Category.destroy_all
Animal.destroy_all

['Bird', 'Mammal', 'Reptile'].each do |name|
  Category.create(name: name)
end

['blue jay', 'magpie', 'owl'].each do |bird|
  Animal.create(name: bird, category: Category.find_by(name: 'Bird'))
end

['bear', 'mouse', 'pig'].each do |mammal|
  Animal.create(name: mammal, category: Category.find_by(name: 'Mammal'))
end

['lizard', 'gecko', 'rattle snake'].each do |reptile|
  Animal.create(name: reptile, category: Category.find_by(name: 'Reptile'))
end

