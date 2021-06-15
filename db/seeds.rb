require "open-uri"

UserMilestone.destroy_all
Milestone.destroy_all
Review.destroy_all
Booking.destroy_all
Lesson.destroy_all
User.destroy_all

file1 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623248495/wzjivbkak78vtrw7swm1.jpg')
file2 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623248638/aiagyj4hzvl9m5i0tvmw.jpg')
file3 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623250143/ut0tzgyqvy28ch38xc3t.jpg')
file4 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623251909/k6ivki2anvsqs3qkeivp.jpg')
file5 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623319007/ghqgjsyf2c5qx1askl0x.jpg')
file6 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623251962/gweidwsabso4ax6tkk9h.jpg')
file7 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623254540/lvqylvr2dpkcumedpxf1.jpg')
file8 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623255041/o2xqehgxs00xuzuzqkse.jpg')
file9 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623254279/dx4ynj5zzghtu2decpjp.jpg')
file10 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623255791/ct5pdae1wmq10feqaluk.jpg')
file11 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623336127/myekn314zasdctogcows.jpg')
file12 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623335906/ncifs5yt25qbfhia6u2o.jpg')
file13 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623256756/k4urqpzkav3ohtddwkd8.jpg')
file14 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623254252/tmu2xf8bm4sbbskqwxwh.jpg')
file15 = URI.open('https://res.cloudinary.com/dufykm87j/image/upload/v1623254295/gcqgayabrvoy0qhamqoh.jpg')

Milestone.create!(name: "one_booking", image: 'icons/trophy.png')
Milestone.create!(name: "five_bookings", image: 'icons/trophy.png')
Milestone.create!(name: "three_tasks", image: 'icons/clipboard.png')
Milestone.create!(name: "add_lesson", image: 'icons/music.png')
Milestone.create!(name: "first_booking")
Milestone.create!(name: "two_lessons")
Milestone.create!(name: "add_review")

puts "Creating users..."

user1 = User.new(first_name:"Reva", last_name:"Scorcese", email:"reva@gmail.com", password:"123456", date_of_birth: DateTime.new(1998,01,01), teacher: true, bio: "Classically trained pianist who can help push any Grade 7 or 8 student over the last hurdles.")
user1.photos.attach(io: file1, filename: 'file1.jpg', content_type: 'image/jpg')
user1.save!
user2 = User.new(first_name:"John", last_name:"Smythe", email:"john@gmail.com", password:"123456", date_of_birth: DateTime.new(1992,01,15), teacher: true, bio: "Friendly pianist offering individual piano and singing lessons in London area for beginners & beyond.")
user2.photos.attach(io: file2, filename: 'file2.jpg', content_type: 'image/jpg')
user2.save!
user3 = User.new(first_name:"Oliver", last_name:"West", email:"oliver@gmail.com", password:"123456", date_of_birth: DateTime.new(1994,04,22), teacher: true, bio: "Jazz is the most fun way to play piano or double bass! If you bring your love of music, I'll bring the expertise.")
user3.photos.attach(io: file3, filename: 'file3.jpg', content_type: 'image/jpg')
user3.save!
user4 = User.new(first_name:"Hannah", last_name:"Hunter", email:"hannah@gmail.com", password:"123456", date_of_birth: DateTime.new(1992,05,12), teacher: true, bio: "Singer/songwriter/guitarist, happy to help any budding folk musician along their journey.")
user4.photos.attach(io: file4, filename: 'file4.jpg', content_type: 'image/jpg')
user4.save!
user5 = User.new(first_name:"James", last_name:"Barton", email:"james@gmail.com", password:"123456", date_of_birth: DateTime.new(1954,01,10), teacher: true, bio: "Opera singer with over 30 years of professional experience in opera and theatre.")
user5.photos.attach(io: file5, filename: 'file5.jpg', content_type: 'image/jpg')
user5.save!
user6 = User.new(first_name:"Big Cheddar", last_name:"Cheese", email:"cheddar@gmail.com", password:"123456", date_of_birth: DateTime.new(1945,11,16), teacher: true, bio: "Freestyle rapper & beatboxer, undefeated in over 100 rap battles. Let's get together and feel the flow.")
user6.photos.attach(io: file6, filename: 'file6.jpg', content_type: 'image/jpg')
user6.save!
user7 = User.new(first_name:"Ophelia", last_name:"Anderson", email:"ophelia@gmail.com", password:"123456", date_of_birth: DateTime.new(1996,03,17), teacher: true, bio: "Experimental Guitarist with all the gear if you have the ideas. Let's get weird & have fun!")
user7.photos.attach(io: file7, filename: 'file7.jpg', content_type: 'image/jpg')
user7.save!
user8 = User.new(first_name:"Ruth", last_name:"Davies", email:"ruth@gmail.com", password:"123456", date_of_birth: DateTime.new(1979,11,16), teacher: true, bio: "Master of Spanish & classic guitar & piano. I'd like to teach entustiastic people how to create beautiful music.")
user8.photos.attach(io: file8, filename: 'file8.jpg', content_type: 'image/jpg')
user8.save!
user9 = User.new(first_name:"Francis", last_name:"Lighter", email:"felix@gmail.com", password:"123456", date_of_birth: DateTime.new(1984,12,02), teacher: true, bio: "Classic rocker, happy to teach some powerchords or how to solo like Hendrix!")
user9.photos.attach(io: file9, filename: 'file9.jpg', content_type: 'image/jpg')
user9.save!
user10 = User.new(first_name:"Alan", last_name:"Jones", email:"alan@gmail.com", password:"123456", date_of_birth: DateTime.new(1989,01,05), teacher: true, bio: "Experienced piano graduate of Liverpool Institute of Arts, fluent in French & English.")
user10.photos.attach(io: file10, filename: 'file10.jpg', content_type: 'image/jpg')
user10.save!
user11 = User.new(first_name:"Timothy", last_name:"Smith", email:"rosie@gmail.com", password:"123456", date_of_birth: DateTime.new(1989,07,10), teacher: true, bio: "Jazz bassist extrordinaire, take this instrument for a spin with me. I'll show you how easy it is to make great sounds")
user11.photos.attach(io: file11, filename: 'file11.jpg', content_type: 'image/jpg')
user11.save!
user12 = User.new(first_name:"Chloé", last_name:"Rubis", email:"chloe@gmail.com", password:"123456", date_of_birth: DateTime.new(1995,10,29), teacher: true, bio: "Passionate Double bassist & violinist, ready to take on some students who want to see how versatile these instruments can be.")
user12.photos.attach(io: file12, filename: 'file12.jpg', content_type: 'image/jpg')
user12.save!
user13 = User.new(first_name:"Victoria", last_name:"Lasoo", email:"victoria@gmail.com", password:"123456", date_of_birth: DateTime.new(1980,10,14), teacher: true, bio: "Folk violin (or fiddle) is one of the snappiest ways to learn, be hoedown ready in no time at all!")
user13.photos.attach(io: file13, filename: 'file13.jpg', content_type: 'image/jpg')
user13.save!
user14 = User.new(first_name:"Tom", last_name:"Rojo", email:"tom@gmail.com", password:"123456", date_of_birth: DateTime.new(1977,03,10), teacher: true, bio: "A graduate of Conservatorio Giuseppe Verdi, a master of classical violin.")
user14.photos.attach(io: file14, filename: 'file14.jpg', content_type: 'image/jpg')
user14.save!
user15 = User.new(first_name:"Sam", last_name:"Wallace", email:"sam@gmail.com", password:"123456", date_of_birth: DateTime.new(1999,01,01), teacher: true, bio: "Violin prodigy & student of Master Littman at the Shine School of Music in Durban.")
user15.photos.attach(io: file15, filename: 'file15.jpg', content_type: 'image/jpg')
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

puts "Created #{Lesson.count} lessons!"

puts "Creating Bookings..."

# user_id, lesson_id, start_date, end_date

booking1 = Booking.create!(lesson: lesson9, user: user1, start_date: DateTime.new(2001,01,01), end_date: DateTime.new(2001,01,01))
booking2 = Booking.create!(lesson: lesson9, user: user1, start_date: DateTime.new(2001,01,02), end_date: DateTime.new(2001,01,02))
booking3 = Booking.create!(lesson: lesson9, user: user1, start_date: DateTime.new(2001,01,03), end_date: DateTime.new(2001,01,03))
booking4 = Booking.create!(lesson: lesson10, user: user1, start_date: DateTime.new(2001,01,03), end_date: DateTime.new(2001,01,03))
booking5 = Booking.create!(lesson: lesson10, user: user1, start_date: DateTime.new(2001,01,03), end_date: DateTime.new(2001,01,03))

puts "Created #{Booking.count} bookings!"

puts "Creating Tasks..."

Task.create!(booking: booking1, name: 'scales', content: "practise scales A-E on piano", completed: true)
Task.create!(booking: booking2, name: 'scales', content: "practise scales A-E on piano", completed: true)
Task.create!(booking: booking3, name: 'scales', content: "practise scales A-E on piano", completed: true)

puts "Created #{Task.count} tasks!"

puts "Creating reviews..."

# rating,comment,booking

review1 = Review.create!(rating: 5, comment:"A wonderful teacher, very patient and understanding of my slow progress.", booking: booking1)
review2 = Review.create!(rating: 4, comment:"Bit casual for me but still a very good teacher & all round nice person", booking: booking2)
review3 = Review.create!(rating: 5, comment:"Can't say enough wonderful things about this teacher, they helped me go from clueless to peerless!", booking: booking2)
review4 = Review.create!(rating: 5, comment:"Had such an amazing lesson with this teacher! Learned a lot and the environment was easygoing and friendly!", booking: booking3)
review5 = Review.create!(rating: 4, comment:"Really enjoyed my lesson with this teacher! Would definitely recommend!", booking: booking4)
review6 = Review.create!(rating: 4, comment:"Fab teacher!", booking: booking4)

puts "Generating random reviews..."

lessons = Lesson.all
lessons.each do |lesson|

  nice_adjective = ["wonderful", "terrific", "lovely", "great", "extraordinary", "exceptional", "brilliant", "gifted", "superb", "tip-top"]
  nice_quality = ["patient", "warm", "enthusiastic", "attentive", "respectful", "funny", "understanding", "encouraging", "collaborative", "professional"]
  not_nice_quality = ["stern", "harsh", "rigid", "sarcastic", "disillusioned", "unprepared", "immature", "old fashioned", "indifferent", "casual"]

  good_comment = [
    "A really #{nice_adjective.sample} teacher, they are #{nice_quality.sample} & #{nice_quality.sample}. Highly reccomended!",
    "I'd definitely recommend this teacher. I found them to be really #{nice_quality.sample} and an all round #{nice_adjective.sample} person.",
    "I've never felt such #{nice_adjective.sample} energy in a lesson. This teacher is #{nice_quality.sample}, #{nice_quality.sample} and #{nice_quality.sample}. I could go on! Book them while you can.",
    "#{nice_adjective.sample.capitalize}! After dealing with teachers who were way too #{not_nice_quality.sample}, I found this teacher to be really #{nice_quality.sample}.",
    "This teacher is #{nice_adjective.sample}, simple as that. If you ever wanted a teacher that personifies #{nice_quality.sample} look no further!"
  ]
  middle_comment = [
    "Even though this teacher can be #{not_nice_quality.sample} at times, they are a #{nice_adjective.sample} teacher who is definitely #{nice_quality.sample}.",
    "A little bit #{not_nice_quality.sample} for me but this teacher is also undoubtedly #{nice_quality.sample} & a #{nice_adjective.sample} person.",
    "Although this teacher is #{nice_adjective.sample}, there was something I personally didn't vibe with. I'm more #{nice_quality.sample} and they were a little bit more #{not_nice_quality.sample}"
  ]
  bad_comment = [
    "I didn't have a great time with this teacher. I needed a teacher that was a lot more #{nice_quality.sample} but found them too #{not_nice_quality.sample} for me.",
    "I heard this teacher was #{not_nice_quality.sample}, but wow! Back to searching for #{nice_quality.sample} teachers!",
    "I was recommended this teacher by another #{nice_adjective.sample} musician. Sounds weird but this teachers was too #{nice_quality.sample}. I'll take someone a little bit #{not_nice_quality.sample} like me next time."
  ]

  user_random = User.all.sample
  lesson_random = Lesson.all.sample
  Booking.create!(lesson: lesson, user: user_random, start_date: DateTime.new(2001,01,01), end_date: DateTime.new(2001,01,01))
  booking_random = Booking.last
  review_random_good = Review.create!(rating: [4,4,5,5,5].sample, comment: good_comment.sample, booking: booking_random)
  review_random_good2 = Review.create!(rating: [4,4,5,5,5].sample, comment: good_comment.sample, booking: booking_random)
  review_random_middle =  Review.create!(rating: [3,3,4,4,5].sample, comment: middle_comment.sample, booking: booking_random)
  review_random_bad = Review.create!(rating: [1,2,2,3,3].sample, comment: bad_comment.sample, booking: booking_random)

end

puts "Finished creating #{Review.count} reviews!"
