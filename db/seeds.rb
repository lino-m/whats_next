require 'faker'

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

Activity.create(
  name: 'Horseriding',
  location: 'Somestreet 4, 12345 Someplace',
  category: 'Sports',
  )

Activity.create(
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

users.each do |user|
  Goal.create!(
    user_id: user.id,
    activity_id: activities.sample.id,
    title: 'If it is parachuting or bungy, I am testing it!',
    motivation: 'I want to overcome some of my own axieties and get out of my comfort zone',
    contribution: 100,
    category: 'adventure' #,
    # photo: , TBD
    )
end

  Goal.create!(
    user_id: frieda.id,
    activity_id: activities.sample.id,
    title: 'practice skating backflips! & more Icecream!',
    motivation: 'Skiing is awesome',
    contribution: 100,
    category: 'Sports',
    # photo: , TBD
    completed: true
    )


  Goal.create!(
    user_id: fred.id,
    activity_id: activities.sample.id,
    title: 'love new things!',
    motivation: 'I want to live to the fullest',
    contribution: 100,
    category: 'Icecream', #,
    # photo: , TBD
    completed: true
    )

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

users.each do |user|
  Goal.create!(
    user_id: user.id,
    activity_id: activities.sample.id,
    title: 'If it is parachuting or bungy, I am testing it!',
    motivation: 'I want to overcome some of my own axieties and get out of my comfort zone',
    contribution: 100,
    category: 'adventure',
    completed: true
    )
end




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



