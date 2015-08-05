require 'faker'

# create some registered apps
smartereverday = RegisteredApplication.new(
    name: "Smarter Everyday",
    url: "http://www.smartereveryday.com/"
)
smartereverday.save!

betterexplianed = RegisteredApplication.new(
    name: "Better Explained",
    url: "http://betterexplained.com/"
)
betterexplianed.save!

teslamotors = RegisteredApplication.new(
    name: "Tesla Motors",
    url: "http://www.teslamotors.com/"
)
teslamotors.save!

intellegentenergy = RegisteredApplication.new(
    name: "Intellegent Energy",
    url: "http://www.intelligent-energy.com/"
)
intellegentenergy.save!

hanebrink = RegisteredApplication.new(
    name: "Hanebrink",
    url: "http://www.fortunehanebrink.com/Hanebrink/"
)
hanebrink.save!

motoped = RegisteredApplication.new(
    name: "Motoped",
    url: "https://motoped.com/pro/"
)
motoped.save!

applications = RegisteredApplication.all

#Create some events
20.times do
  Event.create(
      name: Faker::Lorem.word,
      registered_application: applications.sample
  )
end

puts "Seed finished."
puts "#{Event.count} events created."
