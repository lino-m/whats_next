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
    achievement_score: 20,
    impressions: (10..500).to_a.sample,
    username: 'frieda',
    password: '123456'
  )
file = URI.open('https://images.unsplash.com/photo-1499887142886-791eca5918cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2800&q=80')
  frieda.avatar.attach(io: file, filename: 'frieda.jpeg', content_type: 'image/jpeg')

############################################################################

#ANYO/USERS#####################
andrea = User.create(
   first_name: 'Andrea',
    last_name: 'Scholz',
    email: 'Andrea@scholz.de',
    achievement_score: (100..1000).to_a.sample,
    impressions: (10..500).to_a.sample,
    username: 'Andy',
    password: '123456'
  )
file = URI.open('https://images.unsplash.com/photo-1499887142886-791eca5918cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2800&q=80')
  andrea.avatar.attach(io: file, filename: 'andrea.jpeg', content_type: 'image/jpeg')

  antonia = User.create(
   first_name: 'Antonia',
    last_name: 'Scholz',
    email: 'Antonia@scholz.de',
    achievement_score: (100..1000).to_a.sample,
    impressions: (10..500).to_a.sample,
    username: 'Toni',
    password: '123456'
  )
file = URI.open('https://images.unsplash.com/photo-1567468219153-4b1dea5227ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
  antonia.avatar.attach(io: file, filename: 'antonia.jpeg', content_type: 'image/jpeg')

lisbeth = User.create(
   first_name: 'Lisbeth',
    last_name: 'Brown',
    email: 'lisbeth@scholz.de',
    achievement_score: (100..1000).to_a.sample,
    impressions: (10..500).to_a.sample,
    username: 'Lis',
    password: '123456'
  )
file = URI.open('https://images.unsplash.com/photo-1528809217021-151305b50e55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1652&q=80')
  lisbeth.avatar.attach(io: file, filename: 'lisbeth.jpeg', content_type: 'image/jpeg')

lino = User.create(
   first_name: 'Lino',
    last_name: 'Maurer',
    email: 'lino@maurer.de',
    achievement_score: (100..1000).to_a.sample,
    impressions: (10..500).to_a.sample,
    username: 'Lino',
    password: '123456'
  )
file = URI.open('https://images.unsplash.com/photo-1506919258185-6078bba55d2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1115&q=80')
  lino.avatar.attach(io: file, filename: 'lino.jpeg', content_type: 'image/jpeg')

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

# 5.times do
#   user = User.new(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.free_email(name: "testmail#{counter} "),
#     achievement_score: (100..1000).to_a.sample,
#     impressions: (10..500).to_a.sample
#     )
#   counter += 1
#   user.username = user.first_name
#   user.password = '123456'
#   # user.avatar.attach(File.open('../../app/assets/images/default-avatar.jpg')
#   user.save!
# end

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
helicopter = Activity.create(
  name: 'Helicopter Tour',
  location: 'Ashford Ave, 00907 San Juan',
  category: 'Action',
  )

cinqueterre = Activity.create(
  name: 'cinque Terre Hiking',
  location: 'Monterosso al Mare, 19016 La Spezia',
  category: 'Hiking',
  )

northernlights = Activity.create(
  name: 'Northern Lights in Iceland',
  location: 'Einivellir 1, 221 Hafnarfjörður',
  category: 'Places',
  )

surfing = Activity.create(
  name: 'Surfing Chicama',
  location: 'Puerto Malabrigo, 13731 Malabrigo',
  category: 'Surfing',
  )

#CARO/ACTIVITIES#####################
code = Activity.create(
  name: 'Le Wagon Coding Bootcamp',
  location: 'Rudi-Dutschke-Straße 26,10969 Berlin',
  category: 'Learning',
  )

startup = Activity.create(
  name: 'Berlin Valley ',
  location: 'Gustav-Meyer-Allee 25, 13355 Berlin',
  category: 'Learning',
  )

#LINO/ACTIVITIES#####################


#BIANCA/ACTIVITIES###################
diving = Activity.create(
  name: 'Dive the blue hole',
  location: 'Chapoose Street, Caye Caulker',
  category: 'Nature, Sports, Diving',
  )

backflips = Activity.create(
  name: 'Skate masters',
  location: 'Revaler Str. 99, 10245 Berlin',
  category: 'Nature, Sports',
  )
############################################################################

garden = Activity.create(
  name: 'Gardening',
  location: 'Am Wiesengrund 19, 1215378 Rüdersdorf bei Berlin',
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
    user_id: hanna.id,
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
goal6 = Goal.create!(
    user_id: antonia.id,
    activity_id: surfing.id,
    title: 'Surfing in Peru',
    motivation: 'Everyone wants to visit macchu pichu but I want to surf chicama – longest wave in the world!',
    contribution: 100,
    category: 'Sports',
    completed: false
    )
  file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1583414837/backflips_jmaze3.jpg')
  goal6.photo.attach(io: file, filename: 'backflips.jpeg', content_type: 'image/jpeg')


goal7 = Goal.create!(
    user_id: lino.id,
    activity_id: helicopter.id,
    title: 'See my town from above',
    motivation: 'I love the vibrations of technicity and I know that sitting in a heli its amazing',
    contribution: 100,
    category: 'Sports',
    completed: false
    )
  file = URI.open('https://images.unsplash.com/photo-1490118121063-d12f8c4464ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80')
  goal7.photo.attach(io: file, filename: 'helicopter.jpeg', content_type: 'image/jpeg')

  goal8 = Goal.create!(
    user_id: lisbeth.id,
    activity_id: northernlights.id,
    title: 'Observe the Northern Lights',
    motivation: 'As a child and as a grown woman I have been always amazed by the northern lights – now its time to got to iceland',
    contribution: 100,
    category: 'nature',
    completed: false
    )
  file = URI.open('https://images.unsplash.com/photo-1509529711801-deac231925ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
  goal8.photo.attach(io: file, filename: 'northernlights.jpeg', content_type: 'image/jpeg')



#CARO/GOAL#####################

goalcode = Goal.create!(
    user_id: frieda.id,
    activity_id: code.id,
    title: 'Learn how to Code!',
    motivation: 'I want to know what happens behind the scenes of technology and be able to shape it!',
    contribution: 100,
    category: 'Learning',
    completed: true
    )
  file = URI.open('https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
  goalcode.photo.attach(io: file, filename: 'code.jpeg', content_type: 'image/jpeg')

  goalstartup = Goal.create!(
    user_id: frieda.id,
    activity_id: startup.id,
    title: 'Found my own Startup!',
    motivation: 'I want to start my own Company to be my own boss.',
    contribution: 100,
    category: 'Learning',
    completed: false
    )
  file = URI.open('https://images.unsplash.com/photo-1552664730-d307ca884978?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80')
  goalstartup.photo.attach(io: file, filename: 'startup.jpeg', content_type: 'image/jpeg')

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
Milestone.create(
  goal_id: goal6.id,
  name: '01',
  description: 'set the date for my vacation',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal6.id,
  name: '02',
  description: 'ask my boyfriend if he wants to join',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal6.id,
  name: '03',
  description: 'take a look at booking.com for the best price',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal6.id,
  name: '04',
  description: 'go to booking.com and book a hotel',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal6.id,
  name: '05',
  description: 'call the flight operator to check if i can take my surfboard for free',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal6.id,
  name: '06',
  description: 'book the flight',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal6.id,
  name: '07',
  description: 'check my surfboards for any damage',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal6.id,
  name: '08',
  description: 'pack my stuff and watering my plants',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal6.id,
  name: '09',
  description: 'enjoy vacation and surf the amanzing wave',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal7.id,
  name: '1.',
  description: 'check for flight operators around San Juan',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal7.id,
  name: '2.',
  description: 'ask my peoples if they want to join',
  done: false,
  # price assigned as 0 by default
  )
Milestone.create(
  goal_id: goal7.id,
  name: '3.',
  description: 'make sure the the operator has more then 4 stars',
  done: false,
  # price assigned as 0 by default
  )
Milestone.create(
  goal_id: goal7.id,
  name: '4.',
  description: 'book the heli for 5 people',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal7.id,
  name: '5.',
  description: 'Enjoy the view over San Juan',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal8.id,
  name: 'Step 1',
  description: 'Googleling for the best time to see the northernlights',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal8.id,
  name: 'Step 2',
  description: 'book the bubble hotel - most important step',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal8.id,
  name: 'Step 3',
  description: 'Book the flight to Reykjavík',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal8.id,
  name: 'Step 4',
  description: 'Make sure that I dont need a Visa',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal8.id,
  name: 'Step 5',
  description: 'Ask my Parents for feeding my cat',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal8.id,
  name: 'Step 6',
  description: 'Book a Taxi to the airport',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal8.id,
  name: 'Step 7',
  description: 'Pack my stuff – important to pack my downjacket.',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal8.id,
  name: 'Step 8',
  description: 'enjoy iceland',
  done: false,
  # price assigned as 0 by default
  )
#CARO/MILESTONE/GOALS#####################
Milestone.create(
  goal_id: goalcode.id,
  name: 'Secure a spot',
  description: 'Apply for a bootcamp',
  done: true,
  # price assigned as 0 by default
  )
Milestone.create(
  goal_id: goalcode.id,
  name: 'Computer',
  description: 'Buy a new Computer',
  done: true,
  # price assigned as 0 by default
  )
Milestone.create(
  goal_id: goalcode.id,
  name: 'Prep Work',
  description: 'Look into some coding Languages to be a little prepared',
  done: true,
  # price assigned as 0 by default
  )
Milestone.create(
  goal_id: goalcode.id,
  name: 'Do the Bootcamp',
  description: "Let's do this!",
  done: true,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goalstartup.id,
  name: 'Step 1',
  description: 'Learn to code',
  done: false,
  # price assigned as 0 by default
  )
Milestone.create(
  goal_id: goalstartup.id,
  name: 'Step 2',
  description: 'Make a Business Plan',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goalstartup.id,
  name: 'Step 3',
  description: "Gather a team",
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goalstartup.id,
  name: 'Step 4',
  description: 'Find the right office',
  done: false,
  # price assigned as 0 by default
  )


Milestone.create(
  goal_id: goalstartup.id,
  name: 'Step 5',
  description: 'Start working on our Feedback App',
  done: false,
  # price assigned as 0 by default
  )
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
divegoal = Goal.create!(
    user_id: frieda.id,
    activity_id: diving.id,
    title: 'Follow my passion!',
    motivation: 'Underwater the beauty and stillness is from another world!',
    contribution: 100,
    category: 'Nature',
    completed: false,
    )
  # divegoal.photo = 'dive.jpg'
  # file_data = File.read('assets/dive.jpg')
 file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1584089328/dive_tckkmd.jpg')
  divegoal.photo.attach(io: file, filename: 'dive.jpg', content_type: 'image/jpg')

Milestone.create(
  goal_id: divegoal.id,
  name: 'Step 01',
  description: 'get a medical checkup',
  done: true,
  # price assigned as 0 by default
  )
Milestone.create(
  goal_id: divegoal.id,
  name: 'Step 02',
  description: 'choose a diving school and book a course',
  done: true,
  # price assigned as 0 by default
  )
Milestone.create(
  goal_id: divegoal.id,
  name: 'Step 03',
  description: 'book an accomodation',
  done: true,
  # price assigned as 0 by default
  )
Milestone.create(
  goal_id: divegoal.id,
  name: 'Step 04',
  description: 'book a flight',
  done: true,
  # price assigned as 0 by default
  )
Milestone.create(
  goal_id: divegoal.id,
  name: 'Step 05',
  description: 'get vaccinated if neccessary',
  done: true,
  # price assigned as 0 by default
  )
Milestone.create(
  goal_id: divegoal.id,
  name: 'Step 06',
  description: 'get that open water Padi-Certification',
  done: true,
  # price assigned as 0 by default
  )
Milestone.create(
  goal_id: divegoal.id,
  name: 'Step 06',
  description: 'get that open water Padi-Certification',
  done: true,
  # price assigned as 0 by default
  )
Milestone.create(
  goal_id: divegoal.id,
  name: 'Step 06',
  description: 'get that advanced open water Padi-Certification',
  done: true,
  # price assigned as 0 by default
  )
Milestone.create(
  goal_id: divegoal.id,
  name: 'Step 06',
  description: 'dive the blue hole!',
  done: true,
  # price assigned as 0 by default
  )



############################################################################
  goal6 = Goal.create!(
    user_id: hanna.id,
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
Milestone.create(
  goal_id: goal7.id,
  name: 'Step 01',
  description: 'Look for a nice garden in the community',
  done: false,
  # price assigned as 0 by default
  )


Milestone.create(
  goal_id: goal7.id,
  name: 'Step 02',
  description: 'Buy seeds',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal7.id,
  name: 'Step 03',
  description: 'lay out flower beds',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal7.id,
  name: 'Step 04',
  description: 'make a seeding calender for the veggies',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal7.id,
  name: 'Step 05',
  description: 'seed the plants',
  done: false,
  # price assigned as 0 by default
  )

Milestone.create(
  goal_id: goal7.id,
  name: 'Step 06',
  description: 'Watch the veggies grow',
  done: false,
  # price assigned as 0 by default
  )


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

file = URI.open('https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
  hanna.avatar.attach(io: file, filename: 'hanna.jpeg', content_type: 'image/jpeg')


################ LINO SEEDS END



