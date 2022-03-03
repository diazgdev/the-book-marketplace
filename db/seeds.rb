# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Starting seeds file'
puts 'Desroying previous info...'

Book.destroy_all
Buyer.destroy_all
Seller.destroy_all

puts 'Seeding new Information'

seller1 = Seller.create(name: 'John Shepard', phone: '4495567889', email: 'john@mail.com', password: '123456')
seller2 = Seller.create(name: 'Ahsley Williams', phone: '445676545', email: 'ash@mail.com', password: '123456')

puts "Created example sellers: #{seller1.name} and #{seller2.name}"

Book.create(
  title: "The World's Worst Pets",
  description: "These ten tales of the world's craziest creatures will have you shaking with laughter.
  You'll never look at pets in the same away again!",
  author: 'David Williams',
  price: 15.00,
  seller_id: seller1.id
)

Book.create(
  title: "Loki: A Bad God's Guide to Being Good",
  description: "Wry, witty and very funny diary-style story packed with doodles and comic strips about the frustration
  trickster god Loki feels at having to live trapped in the body of a weedy eleven-year-old boy.",
  author: 'Louie Stowell',
  price: 12.00,
  seller_id: seller2.id
)

Book.create(
  title: 'This is Going to Hurt',
  description: "By degrees hilarious and painfully honest, this is a no-holds barred account of one junior doctor's
  time on the frontline of the NHS.",
  author: 'Adam Kay',
  price: 13.50,
  seller_id: seller1.id
)

Book.create(
  title: 'It Ends With Us',
  description: "Lily hasn't always had it easy, but that's never stopped her from working hard for the life she wants.
  She's come a long way from the small town in Maine where she grew up",
  author: 'Colleen Hoover',
  price: 11.00,
  seller_id: seller1.id
)

Book.create(
  title: 'Sixteen Horses',
  description: "Near the dying English seaside town of Ilmarsh, local police detective Alec Nichols discovers
  sixteen horses' heads on a farm, each buried with a single eye facing the low winter sun.",
  author: 'Greg Buchanan',
  price: 13.00,
  seller_id: seller2.id
)

Book.create(
  title: 'The Seven Husbands of Evelyn Hugo',
  description: "Near the dying English seaside town of Ilmarsh, local police detective Alec Nichols discovers
  sixteen horses' heads on a farm, each buried with a single eye facing the low winter sun.",
  author: 'Taylor Jenkins Reid',
  price: 14.00,
  seller_id: seller2.id
)

Book.create(
  title: 'The Midnight Library',
  description: "When Nora Seed finds herself in the Midnight Library, she has a chance to make things right.
  Up until now, her life has been full of misery and regret.",
  author: 'Matt Haig',
  price: 15.00,
  seller_id: seller1.id
)

Book.create(
  title: 'They Both Die at the End',
  description: 'A love story with a difference - an unforgettable tale of life, loss and making each day count.',
  author: 'Adam Silvera',
  price: 16.00,
  seller_id: seller2.id
)

puts "Seeded #{Book.count} books"
