# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@User1 = User.create(:name => "funkychicken88")
@User2 = User.create(:name => "chattyskunk1995")
@User3 = User.create(:name => "anonymousdog_01")
@User4 = User.create(:name => "ruby_lover_no1")
@User5 = User.create(:name => "jQuery_geek")
@User6 = User.create(:name => "NYC_citygal101")
@User7 = User.create(:name => "chocolatetwinkie")
@User8 = User.create(:name => "cheesecake_luver")
@User9 = User.create(:name => "taxifan_757")
@User10 = User.create(:name => "javascript_guy42")

@review1 = @User1.ride_reviews.create(:driver_id => 2, :star_rating => 2, :comments => "Dude, this guy falls asleep. Don't take his cab late at night.")
@review2 = @User2.ride_reviews.create(:driver_id => 2, :star_rating => 3, :comments => "Average experience. Nothing interesting here. Took a 10 minute ride with this cabbie last night, pretty boring.")
@review3 = @User3.ride_reviews.create(:driver_id => 2, :star_rating => 1, :comments => "Worst experience ever!!!!!! A cockroach ran over my foot!! WTF, MAN.")
@review4 = @User4.ride_reviews.create(:driver_id => 2, :star_rating => 2, :comments => "Average taxi driver. Would've given him 3 stars, but his cab isn't very clean.")
@review5 = @User5.ride_reviews.create(:driver_id => 2, :star_rating => 3, :comments => "Super fun guy to talk to, makes great jokes! Got me from the UWS to Chinatown in 10 minutes!")
@review6 = @User6.ride_reviews.create(:driver_id => 2, :star_rating => 2, :comments => "Average cabbie. Doesn't make conversation, takes you to where you want to go.")
@review7 = @User7.ride_reviews.create(:driver_id => 2, :star_rating => 1, :comments => "NEVER AGAIN.")
@review8 = @User8.ride_reviews.create(:driver_id => 2, :star_rating => 1, :comments => "This guy fell asleep. Do NOT ride with him.")
@review9 = @User9.ride_reviews.create(:driver_id => 2, :star_rating => 1, :comments => "Took me all over town and up 8th Ave instead of the West Side Highway! And then yelled at me when I said that he was overcharging!! Skip this cab.")
@review10 = @User10.ride_reviews.create(:driver_id => 2, :star_rating => 4, :comments => "Great cab driver, gave us some good recommendations of where to eat while we were in New York!")

