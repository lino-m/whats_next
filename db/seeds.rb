require 'faker'
require "open-uri"

# Display activity
puts 'Cleaning database'
# Destroying existing seeds
User.destroy_all
Activity.destroy_all
Goal.destroy_all
Milestone.destroy_all


############################################# Customized Users, Goals, Activities, Milestones and Achievments


# The space for customization


############################################# Generic Population

# Display activity
puts 'Creating users'

counter = 0
frieda = User.create(
   first_name: 'Frieda',
    last_name: 'Scholz',
    email: 'frieda@scholz.de',
    achievement_score: (100..1000).to_a.sample,
    impressions: (10..500).to_a.sample,
    username: 'frieda',
    password: '123456'
  )
fred = User.create(
   first_name: 'Fred',
    last_name: 'Schulz',
    email: 'fred@schulz.de',
    achievement_score: (100..1000).to_a.sample,
    impressions: (10..500).to_a.sample,
    username: 'fred',
    password: '123456'
  )
karl = User.create(
   first_name: 'Karl',
    last_name: 'Muller',
    email: 'karl@muller.de',
    achievement_score: (100..2000).to_a.sample,
    impressions: (10..300).to_a.sample,
    username: 'karl',
    password: '123456'
  )
marie = User.create(
   first_name: 'Marie',
    last_name: 'Dabo',
    email: 'marie@dabo.de',
    achievement_score: (100..1000).to_a.sample,
    impressions: (10..500).to_a.sample,
    username: 'marie',
    password: '123456'
  )
hanna = User.create(
   first_name: 'Hanna',
    last_name: 'Weber',
    email: 'Hanna@weber.de',
    achievement_score: (100..1000).to_a.sample,
    impressions: (10..500).to_a.sample,
    username: 'hanna',
    password: '123456'
  )

5.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.free_email(name: "testmail#{counter} "),
    achievement_score: (100..1000).to_a.sample,
    impressions: (10..500).to_a.sample
    )
  counter += 1
  user.username = user.first_name
  user.password = '123456'
  # user.avatar.attach(File.open('../../app/assets/images/default-avatar.jpg')
  user.save!
end

# Display activity
puts 'Creating activities'

horse = Activity.create(
  name: 'Horseriding',
  location: 'Somestreet 4, 12345 Someplace',
  category: 'New Things',
  )

garden = Activity.create(
  name: 'Gardening',
  location: 'Someroad 1, 12345 Somewhere',
  category: 'Nature',
  )

Activity.create(
  name: 'Parachuting Near Berlin',
  location: 'Flugplatzstraße 3, 16833 Fehrbellin',
  category: 'Parachuting',
  )

Activity.create(
  name: 'Blue Sky Adventures Stuttgart',
  location: 'Fellbacher Str. 143, 70736 Fellbach',
  category: 'Parachuting',
  )

Activity.create(
  name: 'Bungy Jump Like James Bond',
  location: 'Via Valle Verzasca, 6596 Gordola, Schweiz',
  category: 'Bungy',
  )

# Display activity
puts 'Creating Goals'

users = User.all

activities = Activity.all

# users.each do |user|
#   Goal.create!(
#     user_id: user.id,
#     activity_id: activities.sample.id,
#     title: 'If it is parachuting or bungy, I am testing it!',
#     motivation: 'I want to overcome some of my own axieties and get out of my comfort zone',
#     contribution: 100,
#     category: 'adventure' #,
#     # photo: , TBD
#     )
# end

  goal1 = Goal.create!(
    user_id: frieda.id,
    activity_id: activities.sample.id,
    title: 'Practice backflips!',
    motivation: 'Just because it is awesome and will impress a lot of people!',
    contribution: 100,
    category: 'Sports',
    completed: true
    )
  file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1583414837/backflips_jmaze3.jpg')
  goal1.photo.attach(io: file, filename: 'backflips.jpeg', content_type: 'image/jpeg')



  goal2 = Goal.create!(
    user_id: fred.id,
    activity_id: activities.sample.id,
    title: 'Dare a parachute!',
    motivation: "I want to live to the fullest and feel it! I don't know what tomorrow brings, so better live now!" ,
    contribution: 100,
    category: 'Action', #,
    # photo: , TBD
    completed: true
    )
  file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1583414837/parachute_xbagma.jpg')
  goal2.photo.attach(io: file, filename: 'parachute.jpeg', content_type: 'image/jpeg')

  goal3 = Goal.create!(
    user_id: karl.id,
    activity_id: activities.sample.id,
    title: 'Buy a cat!',
    motivation: "Everything is better with a cat – I will never be alone again",

    contribution: 100,
    category: 'New Things', #,
    # photo: , TBD
    completed: true
    )
  file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1583414836/cat_cybhei.jpg')
  goal3.photo.attach(io: file, filename: 'cat.jpeg', content_type: 'image/jpeg')


  goal4 = Goal.create!(
    user_id: marie.id,
    activity_id: activities.sample.id,
    title: 'Do a Sushi Workshop!',
    motivation: "I always admire the Sushi Chefs in my favorite japanese Restaurant. I bet I can do that too!" ,
    contribution: 100,
    category: 'Delicious', #,
    # photo: , TBD
    completed: true
    )
  file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1583414838/sushi_mm7hgu.jpg')
  goal4.photo.attach(io: file, filename: 'sushi.jpeg', content_type: 'image/jpeg')

  goal5 = Goal.create!(
    user_id: hanna.id,
    activity_id: activities.sample.id,
    title: 'Travel to Vienna!',
    motivation: "It's supposed to be one of the most beautiful cities in Europe. Also: Great food!",
    contribution: 100,
    category: 'Travel', #,
    # photo: , TBD
    completed: true
    )
  file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1583414836/Wien_i3ra0m.jpg')
  goal5.photo.attach(io: file, filename: 'wien.jpeg', content_type: 'image/jpeg')




# Display activity
puts 'Creating Milestones for Goals'

goals = Goal.all

goals.each do |goal|
  Milestone.create(
    goal_id: goal.id,
    name: 'Step 01',
    description: 'Add description here',
    done: false,
    # price assigned as 0 by default
    )
  Milestone.create(
    goal_id: goal.id,
    name: 'Step 02',
    description: 'Add description here',
    done: false,
    # price assigned as 0 by default
    )
  Milestone.create!(
    goal_id: goal.id,
    name: 'Step 03',
    description: goal.activity.name,
    done: false,
    # price assigned as 0 by default
    )
end

########################################## Achievements

puts 'Creating Achievements'

users = User.all
activities = Activity.all

# users.each do |user|
#   Goal.create!(
#     user_id: user.id,
#     activity_id: activities.sample.id,
#     title: 'If it is parachuting or bungy, I am testing it!',
#     motivation: 'I want to overcome some of my own axieties and get out of my comfort zone',
#     contribution: 100,
#     category: 'adventure',
#     completed: true
#     )
# end

  goal1 = Goal.create!(
    user_id: frieda.id,
    activity_id: activities.sample.id,
    title: 'Practice backflips!',
    motivation: 'Just because it is awesome and will impress a lot of people!',
    contribution: 100,
    category: 'Sports',
    completed: true
    )
  file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1583414837/backflips_jmaze3.jpg')
  goal1.photo.attach(io: file, filename: 'backflips.jpeg', content_type: 'image/jpeg')



  goal2 = Goal.create!(
    user_id: fred.id,
    activity_id: garden.id,
    title: 'Dare a parachute!',
    motivation: "I want to live to the fullest and feel it! I don't know what tomorrow brings, so better live now!" ,
    contribution: 100,
    category: 'Action', #,
    # photo: , TBD
    completed: true
    )
  file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1583414837/parachute_xbagma.jpg')
  goal2.photo.attach(io: file, filename: 'parachute.jpeg', content_type: 'image/jpeg')

  goal3 = Goal.create!(
    user_id: karl.id,
    activity_id: activities.sample.id,
    title: 'Buy a cat!',
    motivation: "Everything is better with a cat – I will never be alone again",
    contribution: 100,
    category: 'New Things', #,
    # photo: , TBD
    completed: true
    )
  file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1583414836/cat_cybhei.jpg')
  goal3.photo.attach(io: file, filename: 'cat.jpeg', content_type: 'image/jpeg')


  goal4 = Goal.create!(
    user_id: marie.id,
    activity_id: activities.sample.id,
    title: 'Do a Sushi Workshop!',
    motivation: "I always admire the Sushi Chefs in my favorite japanese Restaurant. I bet I can do that too!" ,
    contribution: 100,
    category: 'Delicious', #,
    # photo: , TBD
    completed: true
    )
  file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1583414838/sushi_mm7hgu.jpg')
  goal4.photo.attach(io: file, filename: 'sushi.jpeg', content_type: 'image/jpeg')


  goal5 = Goal.create!(
    user_id: hanna.id,
    activity_id: activities.sample.id,
    title: 'Travel to Vienna!',
    motivation: "It's supposed to be one of the most beautiful cities in Europe. Also: Great food!",
    contribution: 100,
    category: 'Travel', #,
    # photo: , TBD
    completed: true
    )
  file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1583414836/Wien_i3ra0m.jpg')
  goal5.photo.attach(io: file, filename: 'wien.jpeg', content_type: 'image/jpeg')


# Display activity
puts 'Creating Milestones for Achievements'

achievements = Goal.where(completed: true)

achievements.each do |goal|
  Milestone.create(
    goal_id: goal.id,
    name: 'Step 01',
    description: 'Add description here',
    done: true
    # price assigned as 0 by default
    )
  Milestone.create(
    goal_id: goal.id,
    name: 'Step 02',
    description: 'Add description here',
    done: true
    # price assigned as 0 by default
    )
  Milestone.create!(
    goal_id: goal.id,
    name: 'Step 03',
    description: goal.activity.name,
    done: true
    # price assigned as 0 by default
    )
end



