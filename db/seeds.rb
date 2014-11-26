# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@User1 = User.create(:name => "funkychicken88", :email => 'funkychicken88@gmail.com', :password => 'password' , :password_confirmation => 'password' )
@User2 = User.create(:name => "chattyskunk1995", :email => 'chattyskunk1995@gmail.com', :password => 'password' , :password_confirmation => 'password')
@User3 = User.create(:name => "anonymousdog_01", :email => 'anonymousdog_01@gmail.com', :password => 'password' , :password_confirmation => 'password')
@User4 = User.create(:name => "ruby_lover_no1", :email => 'ruby_lover_no1@gmail.com', :password => 'password' , :password_confirmation => 'password')
@User5 = User.create(:name => "jQuery_geek", :email => 'jQuery_geek@gmail.com', :password => 'password' , :password_confirmation => 'password')
@User6 = User.create(:name => "NYC_citygal101", :email => 'NYC_citygal101@gmail.com', :password => 'password' , :password_confirmation => 'password')
@User7 = User.create(:name => "chocolatetwinkie", :email => 'chocolatetwinkie88@gmail.com', :password => 'password' , :password_confirmation => 'password')
@User8 = User.create(:name => "cheesecake_luver", :email => 'cheesecake_luver@gmail.com', :password => 'password' , :password_confirmation => 'password')
@User9 = User.create(:name => "taxifan_757", :email => 'taxifan_757@gmail.com', :password => 'password' , :password_confirmation => 'password')
@User10 = User.create(:name => "javascript_guy42", :email => 'javascript_guy42@gmail.com', :password => 'password' , :password_confirmation => 'password')
@User11 = User.create(:name => "Rails4EVA", :email => 'Rails4EVA@gmail.com', :password => 'password' , :password_confirmation => 'password')



@review1 = @User11.ride_reviews.create(:driver_id => 70133, :star_rating => 5, :comments => "Yo! Khalid da man. I wish I was still in the cab. Holla", :uber => true)
@review2 = @User1.ride_reviews.create(:driver_id => 70133, :star_rating => 2, :comments => "Dude, this guy falls asleep. Don't take his cab late at night.")
@review3 = @User2.ride_reviews.create(:driver_id => 70133, :star_rating => 3, :comments => "Average experience. Nothing interesting here. Took a 10 minute ride with this cabbie last night, pretty boring.", :uber => true)
@review4 = @User3.ride_reviews.create(:driver_id => 70133, :star_rating => 1, :comments => "Worst experience ever!!!!!! A cockroach ran over my foot!! WTF, MAN.", :uber => true)
@review5 = @User4.ride_reviews.create(:driver_id => 70133, :star_rating => 2, :comments => "Average taxi driver. Would've given him 3 stars, but his cab isn't very clean.")
@review6 = @User5.ride_reviews.create(:driver_id => 70133, :star_rating => 4, :comments => "Super fun guy to talk to, makes great jokes! Got me from the UWS to Chinatown in 10 minutes!", :uber => true)
@review7 = @User6.ride_reviews.create(:driver_id => 70133, :star_rating => 2, :comments => "Average cabbie. Doesn't make conversation, takes you to where you want to go.")
@review8 = @User7.ride_reviews.create(:driver_id => 70133, :star_rating => 1, :comments => "NEVER AGAIN.",:uber => true)
@review9 = @User8.ride_reviews.create(:driver_id => 70133, :star_rating => 1, :comments => "This guy fell asleep. Do NOT ride with him.", :uber => true)
@review10 = @User9.ride_reviews.create(:driver_id => 70133, :star_rating => 2, :comments => "Took me all over town and up 8th Ave instead of the West Side Highway! And then yelled at me when I said that he was overcharging!! Skip this cab.", :uber => true)
@review11 = @User10.ride_reviews.create(:driver_id => 70133, :star_rating => 4, :comments => "Great cab driver, gave us some good recommendations of where to eat while we were in New York!")


@review11 = @User7.ride_reviews.create(:driver_id => 78346, :star_rating => 2, :comments => "TBT I was really hungry. I was hoping there would be food in the cab...")
@review12 = @User1.ride_reviews.create(:driver_id => 78346, :star_rating => 5, :comments => "It was rush hour in Manhattan and the dude actually took me to Brooklyn", :uber => true)
@review13 = @User2.ride_reviews.create(:driver_id => 78346, :star_rating => 4, :comments => "Bumpin some cool tunez")
@review14 = @User3.ride_reviews.create(:driver_id => 78346, :star_rating => 1, :comments => "This guy was a total bummer", :uber => true)
@review15 = @User4.ride_reviews.create(:driver_id => 78346, :star_rating => 3, :comments => "TL;DR Nothing crazy to report here")
@review16 = @User5.ride_reviews.create(:driver_id => 78346, :star_rating => 5, :comments => "This dude totally rocked my ride ya'll!", :uber => true)
@review17 = @User6.ride_reviews.create(:driver_id => 78346, :star_rating => 2, :comments => "Cab smelled like cigarettes.")
@review18 = @User11.ride_reviews.create(:driver_id => 78346, :star_rating => 1, :comments => "Wouldn't take me to Brooklyn....no surprise",:uber => true)
@review19 = @User8.ride_reviews.create(:driver_id => 78346, :star_rating => 3, :comments => "Ummm ride was like okay", :uber => true)
@review20 = @User9.ride_reviews.create(:driver_id => 78346, :star_rating => 2, :comments => "Driver had no idea where he was going", :uber => true)
@review21 = @User10.ride_reviews.create(:driver_id => 78346, :star_rating => 4, :comments => "Pretty quick ride. Didn't say any weird things to me. Would ride again.") 

