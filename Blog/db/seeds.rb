# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

   zone =TZone.create([{:zone=>"UTC -11:00 ",:description => "Midway Island"},{:zone=>"UTC -10:00" ,:description=> "Hawaii"},{:zone=>"UTC -08:00 " ,:description=> "Pacific time"},{:zone=>"UTC -07:00",:description=>"Mountain time"},{:zone=>"UTC -06:00",:description=>"Central time"},
           {:zone=>"UTC -05:00 ",:description=> "Eastern time"},{:zone=>"UTC -04:00 ",:description=> "Atlantic time"},{:zone=>"UTC -03:00",:description=>"Greenland"},{:zone=>"UTC +00:00",:description=>'London'},{:zone=>'UTC +01:00',:description=>'Rome'},{:zone=>'UTC +05:00 ',:description=>'Islamabad'}])







