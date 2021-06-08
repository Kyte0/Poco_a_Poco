require "open-uri"

User.destroy_all

puts "Creating users..."

user1 = User.create!(first_name:"Reva", last_name:"Scorcese", email:"reva@gmail.com", password:"123456", date_of_birth: DateTime.new(1998,01,01), teacher: true, bio: "Classically trained pianist who can help push any Grade 7 or 8 student over the last hurdles.")
user2 = User.create!(first_name:"John", last_name:"Smythe", email:"john@gmail.com", password:"123456", date_of_birth: DateTime.new(1992,01,15), teacher: true, bio: "Friendly pianist offering individual piano and singing lessons in London area for beginners & beyond.")
user3 = User.create!(first_name:"Oliver", last_name:"West", email:"oliver@gmail.com", password:"123456", date_of_birth: DateTime.new(1994,04,22), teacher: true, bio: "Jazz piano is the most fun way to play! If you bring your love of music, I'll bring the expertise.")
user4 = User.create!(first_name:"Hannah", last_name:"Hunter", email:"hannah@gmail.com", password:"123456", date_of_birth: DateTime.new(1992,05,12), teacher: true, bio: "Singer/songwriter, happy to help any budding folk musician along their journey.")
user5 = User.create!(first_name:"James", last_name:"Barton", email:"james@gmail.com", password:"123456", date_of_birth: DateTime.new(1954,01,10), teacher: true, bio: "Opera singer with over 30 years of professional experience in opera and theatre.")
user6 = User.create!(first_name:"Big", last_name:"Cheddar", email:"cheddar@gmail.com", password:"123456", date_of_birth: DateTime.new(1987,11,13), teacher: true, bio: "Freestyle rapper & beatboxer, undefeated in over 100 rap battles. Let's get together and feel the flow.")
user7 = User.create!(first_name:"Ophelia", last_name:"Anderson", email:"ophelia@gmail.com", password:"123456", date_of_birth: DateTime.new(1996,03,17), teacher: true, bio: "Experimental Guitarist with all the gear if you have the ideas. Let's get weird & have fun!")
user8 = User.create!(first_name:"Ruth", last_name:"Davies", email:"ruth@gmail.com", password:"123456", date_of_birth: DateTime.new(1979,11,16), teacher: true, bio: "Master of Spanish & classic guitar. I'd like to teach entustiastic people how to create beautiful music.")
user9 = User.create!(first_name:"Felix", last_name:"Lighter", email:"felix@gmail.com", password:"123456", date_of_birth: DateTime.new(1984,12,02), teacher: true, bio: "Classic rocker, happy to teach some powerchords or how to solo like Hendrix!")
user10 = User.create!(first_name:"Alan", last_name:"Jones", email:"alan@gmail.com", password:"123456", date_of_birth: DateTime.new(1989,01,05), teacher: true, bio: "Experienced double bass graduate of Liverpool Institute of Arts, fluent in French & English.")
user11 = User.create!(first_name:"Rosie", last_name:"Lyne", email:"rosie@gmail.com", password:"123456", date_of_birth: DateTime.new(1989,07,10), teacher: true, bio: "Jazz bassist extrordinaire, take this instrument for a spin with me. I'll show you how easy it is to make great sounds")
user12 = User.create!(first_name:"Chloé", last_name:"Rubis", email:"chloe@gmail.com", password:"123456", date_of_birth: DateTime.new(1995,10,29), teacher: true, bio: "Passionate Double bassist, ready to take on some students who want to see how versatile the Double Bass can be.")
user13 = User.create!(first_name:"Victoria", last_name:"Lasoo", email:"victoria@gmail.com", password:"123456", date_of_birth: DateTime.new(1980,10,14), teacher: true, bio: "Folk violin (or fiddle) is one of the snappiest ways to learn, be hoedown ready in no time at all!")
user14 = User.create!(first_name:"Tom", last_name:"Rojo", email:"tom@gmail.com", password:"123456", date_of_birth: DateTime.new(1977,03,10), teacher: true, bio: "A graduate of Conservatorio Giuseppe Verdi, a master of classical violin.")
user15 = User.create!(first_name:"Sam", last_name:"Wallace", email:"sam@gmail.com", password:"123456", date_of_birth: DateTime.new(1999,01,01), teacher: true, bio: "Violin prodigy & student of Master Littman at the Shine School of Music in Durban.")

puts "Finished creating users!"

puts "Creating Lessons..."
# lesson1 = (instrument:"", price:, level:"", location:"", user_id: )
puts "Nothing created yet."


