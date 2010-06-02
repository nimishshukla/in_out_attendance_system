# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
Status.find_or_create_by_id(:id => 1, :name => "New", :position => 1, :active => true)
Status.find_or_create_by_id(:id => 2, :name => "Assigned", :position => 2, :active => true)
Status.find_or_create_by_id(:id => 3, :name => "Currently Working On", :position => 3, :active => true)
Status.find_or_create_by_id(:id => 4, :name => "Testing", :position => 4, :active => true)
Status.find_or_create_by_id(:id => 5, :name => "Quality Analysis", :position => 5, :active => true)
Status.find_or_create_by_id(:id => 6, :name => "Completed", :position => 6, :active => true)