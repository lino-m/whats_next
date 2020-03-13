require 'faker'
require "open-uri"

# Display activity
puts 'Cleaning database'
# Destroying existing seeds
User.destroy_all
Activity.destroy_all
Goal.destroy_all
Milestone.destroy_all


# Display activity
puts 'Creating users'
counter = 0

###################### create a user like this #######################

frieda = User.create(
   first_name: 'Frieda',
    last_name: 'Scholz',
    email: 'frieda@scholz.de',
    achievement_score: (100..1000).to_a.sample,
    impressions: (10..500).to_a.sample,
    username: 'frieda',
    password: '123456'
  )
file = URI.open('https://images.unsplash.com/photo-1499887142886-791eca5918cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2800&q=80')
  frieda.avatar.attach(io: file, filename: 'frieda.jpeg', content_type: 'image/jpeg')

############################################################################

#ANYO/USERS#####################


#CARO/USERS#####################


#LINO/USERS#####################


#BIANCA/USERS###################


#############################################################################

fred = User.create(
   first_name: 'Fred',
    last_name: 'Schulz',
    email: 'fred@schulz.de',
    achievement_score: (100..1000).to_a.sample,
    impressions: (10..500).to_a.sample,
    username: 'fred',
    password: '123456'
  )
file = URI.open('https://images.unsplash.com/photo-1529068755536-a5ade0dcb4e8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1002&q=80')
  fred.avatar.attach(io: file, filename: 'fred.jpeg', content_type: 'image/jpeg')

karl = User.create(
   first_name: 'Karl',
    last_name: 'Muller',
    email: 'karl@muller.de',
    achievement_score: (100..2000).to_a.sample,
    impressions: (10..300).to_a.sample,
    username: 'karl',
    password: '123456'
  )
file = URI.open('https://images.unsplash.com/photo-1541534401786-2077eed87a74?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80')
  karl.avatar.attach(io: file, filename: 'karl.jpeg', content_type: 'image/jpeg')

marie = User.create(
   first_name: 'Marie',
    last_name: 'Dabo',
    email: 'marie@dabo.de',
    achievement_score: (100..1000).to_a.sample,
    impressions: (10..500).to_a.sample,
    username: 'marie',
    password: '123456'
  )
file = URI.open('https://images.unsplash.com/photo-1479936343636-73cdc5aae0c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80')
  marie.avatar.attach(io: file, filename: 'marie.jpeg', content_type: 'image/jpeg')

hanna = User.create(
   first_name: 'Hanna',
    last_name: 'Weber',
    email: 'Hanna@weber.de',
    achievement_score: (100..1000).to_a.sample,
    impressions: (10..500).to_a.sample,
    username: 'hanna',
    password: '123456'
  )
file = URI.open('https://images.unsplash.com/photo-1528341866330-07e6d1752ec2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1002&q=80')
  hanna.avatar.attach(io: file, filename: 'hanna.jpeg', content_type: 'image/jpeg')

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
###################### create an activity like this #######################
horse = Activity.create(
  name: 'Horseriding',
  location: 'Lindenberger Str. 29, 16356 Berlin-Ahrensfelde',
  category: 'Sports',
  )

###########################################################################


#ANYO/ACTIVITIES#####################


#CARO/ACTIVITIES#####################


#LINO/ACTIVITIES#####################


#BIANCA/ACTIVITIES###################
backflips = Activity.create(
  name: 'Skate masters',
  location: 'Anywhere, Worldwide',
  category: 'Nature, Sports',
  )
############################################################################

garden = Activity.create(
  name: 'Gardening',
  location: 'Am Wiesengrund 12, 1215378 Rüdersdorf bei Berlin',
  category: 'Nature',
  )

parachute_berlin = Activity.create(
  name: 'Parachuting Near Berlin',
  location: 'Flugplatzstraße 3, 16833 Fehrbellin',
  category: 'Parachuting',
  )

parachute_fellbach = Activity.create(
  name: 'Blue Sky Adventures Stuttgart',
  location: 'Fellbacher Str. 143, 70736 Fellbach',
  category: 'Parachuting',
  )

bungy = Activity.create(
  name: 'Bungy Jump Like James Bond',
  location: 'Via Valle Verzasca, 6596 Gordola, Schweiz',
  category: 'Bungy',
  )
hike_in_georgia = Activity.create(
  name: 'Hiking in Georgia',
  location: 'Davit Aghmashenebeli Avenue 166, 0112 Tbilissi',
  category: 'Nature, Sports',
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
###################### create a goal like this #######################
  goal1 = Goal.create!(
    user_id: frieda.id,
    activity_id: backflips.id,
    title: 'Practice backflips!',
    motivation: 'Just because it is awesome and will impress a lot of people!',
    contribution: 100,
    category: 'Sports',
    completed: false
    )
  file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1583414837/backflips_jmaze3.jpg')
  goal1.photo.attach(io: file, filename: 'backflips.jpeg', content_type: 'image/jpeg')

#######################################################################

#ANYO/GOAL#####################


#CARO/GOAL#####################


#LINO/GOAL#####################


#BIANCA/GOAL###################

############################################################################

  goal2 = Goal.create!(
    user_id: fred.id,
    activity_id: activities.sample.id,
    title: 'Dare a parachute!',
    motivation: "I want to live to the fullest and feel it! I don't know what tomorrow brings, so better live now!" ,
    contribution: 100,
    category: 'Action', #,
    # photo: , TBD
    completed: false
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
    completed: false
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
    completed: false
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
    completed: false
    )
  file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1583414836/Wien_i3ra0m.jpg')
  goal5.photo.attach(io: file, filename: 'wien.jpeg', content_type: 'image/jpeg')




# Display activity
puts 'Creating Milestones for Goals'

goals = Goal.where(completed: false)
###################### create a milestone like this #######################
Milestone.create(
  goal_id: goal1.id,
  name: 'Step 01',
  description: 'Add description here',
  done: false,
  # price assigned as 0 by default
  )
###########################################################################

#ANYO/MILESTONE/GOALS#####################


#CARO/MILESTONE/GOALS#####################


#LINO/MILESTONE/GOALS#####################


#BIANCA/MILESTONE/GOALS###################

############################################################################
# goals.each do |goal|
#   Milestone.create(
#     goal_id: goal.id,
#     name: 'Step 01',
#     description: 'Add description here',
#     done: false,
#     # price assigned as 0 by default
#     )
#   Milestone.create(
#     goal_id: goal.id,
#     name: 'Step 02',
#     description: 'Add description here',
#     done: false,
#     # price assigned as 0 by default
#     )
#   Milestone.create!(
#     goal_id: goal.id,
#     name: 'Step 03',
#     description: goal.activity.name,
#     done: false,
#     # price assigned as 0 by default
#     )
# end


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

#ANYO/ACHIEVEMENTS#####################


#CARO/ACHIEVEMENTS#####################


#LINO/ACHIEVEMENTS#####################


#BIANCA/ACHIEVEMENTS###################

############################################################################
  goal6 = Goal.create!(
    user_id: frieda.id,
    activity_id: hike_in_georgia.id,
    title: 'Go hiking in Georgia!',
    motivation: 'The nature there is supposed to be beyond beautiful!',
    contribution: 100,
    category: 'Nature',
    completed: true
    )
  file = URI.open('https://images.unsplash.com/photo-1569498286839-55f1a0766292?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
  goal6.photo.attach(io: file, filename: 'georgia.jpeg', content_type: 'image/jpeg')



  goal7 = Goal.create!(
    user_id: fred.id,
    activity_id: garden.id,
    title: 'Grow my own Veggies!',
    motivation: "Be in nature more often and know what I'm eating" ,
    contribution: 100,
    category: 'Nature', #,
    # photo: , TBD
    completed: true
    )
  file = URI.open('https://images.unsplash.com/photo-1516253593875-bd7ba052fbc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
  goal7.photo.attach(io: file, filename: 'puglia.jpeg', content_type: 'image/jpeg')

  goal8 = Goal.create!(
    user_id: karl.id,
    activity_id: activities.sample.id,
    title: 'Buy a dog!',
    motivation: "Dogs are great friends and will force me to exercise more!",
    contribution: 100,
    category: 'New Things', #,
    # photo: , TBD
    completed: true
    )
  file = URI.open('https://images.unsplash.com/photo-1477884213360-7e9d7dcc1e48?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
  goal8.photo.attach(io: file, filename: 'cat.jpeg', content_type: 'image/jpeg')


  goal9 = Goal.create!(
    user_id: marie.id,
    activity_id: activities.sample.id,
    title: 'Sell on a fleamarket!',
    motivation: "My closet is exploding and I don't wear half of the stuff inside. I really need to get rid of some pieces to make room for new ones." ,
    contribution: 100,
    category: 'Clothes', #,
    # photo: , TBD
    completed: true
    )
  file = URI.open('https://images.unsplash.com/photo-1512237017014-1b4a7fa57654?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
  goal9.photo.attach(io: file, filename: 'sushi.jpeg', content_type: 'image/jpeg')


  goal10 = Goal.create!(
    user_id: hanna.id,
    activity_id: activities.sample.id,
    title: 'Eat at a five star restaurant!',
    motivation: "I am curious whats so special about eating such an expensive meal",
    contribution: 100,
    category: 'Delicious', #,
    # photo: , TBD
    completed: true
    )
  file = URI.open('https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
  goal10.photo.attach(io: file, filename: 'restaurant.jpeg', content_type: 'image/jpeg')


# Display activity
puts 'Creating Milestones for Achievements'

achievements = Goal.where(completed: true)

###################### create a milestone like this #######################
Milestone.create(
  goal_id: goal1.id,
  name: 'Step 01',
  description: 'Add description here',
  done: false,
  # price assigned as 0 by default
  )
###########################################################################

#ANYO/MILESTONE/ACHIEVEMENTS#####################


#CARO/MILESTONE/ACHIEVEMENTS#####################


#LINO/MILESTONE/ACHIEVEMENTS#####################


#BIANCA/MILESTONE/ACHIEVEMENTS###################

############################################################################

# achievements.each do |goal|
#   Milestone.create(
#     goal_id: goal.id,
#     name: 'Step 01',
#     description: 'Add description here',
#     done: true
#     # price assigned as 0 by default
#     )
#   Milestone.create(
#     goal_id: goal.id,
#     name: 'Step 02',
#     description: 'Add description here',
#     done: true
#     # price assigned as 0 by default
#     )
#   Milestone.create!(
#     goal_id: goal.id,
#     name: 'Step 03',
#     description: goal.activity.name,
#     done: true
#     # price assigned as 0 by default
#     )
# end


############### LINO SEEDS START

peter = User.create(
   first_name: 'Peter',
    last_name: 'Parker',
    email: 'peter@stark.web',
    achievement_score: (100..1000).to_a.sample,
    impressions: (10..500).to_a.sample,
    username: 'Peter',
    password: '123456'
  )
file = URI.open('')
  hanna.avatar.attach(io: file, filename: 'hanna.jpeg', content_type: 'image/jpeg')


################ LINO SEEDS END



