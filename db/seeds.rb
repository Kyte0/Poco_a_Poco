require "open-uri"

User.destroy_all
Lesson.destroy_all

puts "Creating users..."

user1 = User.new(first_name:"Reva", last_name:"Scorcese", email:"reva@gmail.com", password:"123456", date_of_birth: DateTime.new(1998,01,01), teacher: true, bio: "Classically trained pianist who can help push any Grade 7 or 8 student over the last hurdles.")
user1.save!
user2 = User.new(first_name:"John", last_name:"Smythe", email:"john@gmail.com", password:"123456", date_of_birth: DateTime.new(1992,01,15), teacher: true, bio: "Friendly pianist offering individual piano and singing lessons in London area for beginners & beyond.")
user2.save!
user3 = User.new(first_name:"Oliver", last_name:"West", email:"oliver@gmail.com", password:"123456", date_of_birth: DateTime.new(1994,04,22), teacher: true, bio: "Jazz is the most fun way to play piano or double bass! If you bring your love of music, I'll bring the expertise.")
user3.save!
user4 = User.new(first_name:"Hannah", last_name:"Hunter", email:"hannah@gmail.com", password:"123456", date_of_birth: DateTime.new(1992,05,12), teacher: true, bio: "Singer/songwriter/guitarist, happy to help any budding folk musician along their journey.")
user4.save!
user5 = User.new(first_name:"James", last_name:"Barton", email:"james@gmail.com", password:"123456", date_of_birth: DateTime.new(1954,01,10), teacher: true, bio: "Opera singer with over 30 years of professional experience in opera and theatre.")
user5.save!
user6 = User.new(first_name:"Big", last_name:"Cheddar", email:"cheddar@gmail.com", password:"123456", date_of_birth: DateTime.new(1987,11,13), teacher: true, bio: "Freestyle rapper & beatboxer, undefeated in over 100 rap battles. Let's get together and feel the flow.")
user6.save!
user7 = User.new(first_name:"Ophelia", last_name:"Anderson", email:"ophelia@gmail.com", password:"123456", date_of_birth: DateTime.new(1996,03,17), teacher: true, bio: "Experimental Guitarist with all the gear if you have the ideas. Let's get weird & have fun!")
user7.save!
user8 = User.new(first_name:"Ruth", last_name:"Davies", email:"ruth@gmail.com", password:"123456", date_of_birth: DateTime.new(1979,11,16), teacher: true, bio: "Master of Spanish & classic guitar & piano. I'd like to teach entustiastic people how to create beautiful music.")
user8.save!
user9 = User.new(first_name:"Felix", last_name:"Lighter", email:"felix@gmail.com", password:"123456", date_of_birth: DateTime.new(1984,12,02), teacher: true, bio: "Classic rocker, happy to teach some powerchords or how to solo like Hendrix!")
user9.save!
user10 = User.new(first_name:"Alan", last_name:"Jones", email:"alan@gmail.com", password:"123456", date_of_birth: DateTime.new(1989,01,05), teacher: true, bio: "Experienced double bass graduate of Liverpool Institute of Arts, fluent in French & English.")
user10.save!
user11 = User.new(first_name:"Rosie", last_name:"Lyne", email:"rosie@gmail.com", password:"123456", date_of_birth: DateTime.new(1989,07,10), teacher: true, bio: "Jazz bassist extrordinaire, take this instrument for a spin with me. I'll show you how easy it is to make great sounds")
user11.save!
user12 = User.new(first_name:"Chloé", last_name:"Rubis", email:"chloe@gmail.com", password:"123456", date_of_birth: DateTime.new(1995,10,29), teacher: true, bio: "Passionate Double bassist & violinist, ready to take on some students who want to see how versatile these instruments can be.")
user12.save!
user13 = User.new(first_name:"Victoria", last_name:"Lasoo", email:"victoria@gmail.com", password:"123456", date_of_birth: DateTime.new(1980,10,14), teacher: true, bio: "Folk violin (or fiddle) is one of the snappiest ways to learn, be hoedown ready in no time at all!")
user13.save!
user14 = User.new(first_name:"Tom", last_name:"Rojo", email:"tom@gmail.com", password:"123456", date_of_birth: DateTime.new(1977,03,10), teacher: true, bio: "A graduate of Conservatorio Giuseppe Verdi, a master of classical violin.")
user14.save!
user15 = User.new(first_name:"Sam", last_name:"Wallace", email:"sam@gmail.com", password:"123456", date_of_birth: DateTime.new(1999,01,01), teacher: true, bio: "Violin prodigy & student of Master Littman at the Shine School of Music in Durban.")
user15.save!
puts "Finished creating #{User.count} users!"

puts "Creating Lessons..."

lesson1 = Lesson.create!(instrument:"Piano", price: 50, level:"Expert", location:"NW1 2RA", user: user1)
lesson2 = Lesson.create!(instrument:"Piano", price: 10, level:"Beginner", location:"N1 0PB", user: user2)
lesson3 = Lesson.create!(instrument:"Piano", price: 25, level:"Intermediate", location:"SE1 9QQ", user: user3)
lesson4 = Lesson.create!(instrument:"Voice", price: 10, level:"Beginner", location:"NW1 2RA", user: user4)
lesson5 = Lesson.create!(instrument:"Voice", price: 50, level:"Expert", location:"EC2V 8BL", user: user5)
lesson6 = Lesson.create!(instrument:"Voice", price: 25, level:"Intermediate", location:"WC1V 6LF", user: user6)
lesson7 = Lesson.create!(instrument:"Guitar", price: 25, level:"Intermediate", location:"W1D 3RW", user: user7)
lesson8 = Lesson.create!(instrument:"Guitar", price: 50, level:"Expert", location:"EC2M 4QD", user: user8)
lesson9 = Lesson.create!(instrument:"Guitar", price: 10, level:"Beginner", location:"SE1 9DS", user: user9)
lesson10 = Lesson.create!(instrument:"Double Bass", price: 10, level:"Beginner", location:"WC1A 1NS", user: user10)
lesson11 = Lesson.create!(instrument:"Double Bass", price: 25, level:"Intermediate", location:"EC3R 5AS", user: user11)
lesson12 = Lesson.create!(instrument:"Double Bass", price: 10, level:"Beginner", location:"WC2N 4AA", user: user12)
lesson13 = Lesson.create!(instrument:"Violin", price: 10, level:"Beginner", location:"EC3V 1LR", user: user13)
lesson14 = Lesson.create!(instrument:"Violin", price: 50, level:"Expert", location:"WC2E 7AH", user: user14)
lesson15 = Lesson.create!(instrument:"Violin", price: 25, level:"Intermediate", location:"SE1 8YP", user: user15)
lesson16 = Lesson.create!(instrument:"Guitar", price: 10, level:"Beginner", location:"SW1Y 4EN", user: user4)
lesson17 = Lesson.create!(instrument: "Voice", price: 10, level:"Beginner", location:"EC4A 1AN", user: user2)
lesson18 = Lesson.create!(instrument: "Violin", price: 10, level:"Beginner", location:"WC2R 1JA", user: user12)
lesson19 = Lesson.create!(instrument: "Piano", price: 10, level:"Beginner", location:"EC4M 8AY", user: user8)
lesson20 = Lesson.create!(instrument: "Double Bass", price: 10, level:"Beginner", location:"WC2R 0RG", user: user3)

puts "Finished creating #{Lesson.count} lessons!"
