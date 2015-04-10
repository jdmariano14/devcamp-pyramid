# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

head = FactoryGirl.create(:member)

3.times do
  Member.create(name: "FLR_#{('a'..'z').to_a.shuffle[0..5].join('')}", age: 20, company: "Peer MD", money: 10000, recruiter_id: 1)
end

head.recruits.each do |recruit|
  2.times do
    Member.create(name: "SLR_#{('a'..'z').to_a.shuffle[0..5].join('')}", age: 19, company: "Peer MD", money: 100, recruiter_id: recruit.id)	
  end
end