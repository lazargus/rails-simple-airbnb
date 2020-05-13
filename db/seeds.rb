# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
a = { name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  }
b = { name: 'Little tiny flat Paris',
    address: '13 avenue des Champs Elysees',
    description: 'A little flat for workers in business trip',
    price_per_night: 35,
    number_of_guests: 1
  }
c = { name: 'Beautiful penthouse NYC',
    address: '10 central park avenue',
    description: 'A beautiful flat of 300m2 with an amazing view on central park',
    price_per_night: 475,
    number_of_guests: 8
  }
d = { name: 'Family Flat London',
    address: '10 Gordon Banks London W9 1DT',
    description: 'A perfect flat for a family',
    price_per_night: 175,
    number_of_guests: 3
  }

[a, b, c, d].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
