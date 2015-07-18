# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
['admin'].each do |role|
	  Role.where(name: role).first_or_create
end

['abhishek', 'arun', 'vipin.joshi'].each do |username|
  user = User.create!(:password => 'samosys123', :password_confirmation => 'samosys123', :email => "#{username}@samosys.com")
end 