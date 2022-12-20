Alien.create(name: 'glooglop', earth_disguise_name: 'Peter', home_planet: 'Xenon', light_years_to_home_planet: 1)
Alien.create(name: 'blooblop', earth_disguise_name: 'Jack', home_planet: 'Benon', light_years_to_home_planet: 2)
Alien.create(name: 'clooclop', earth_disguise_name: 'Victoria', home_planet: 'Wenon', light_years_to_home_planet: 3)

Earthling.create(first_name: 'bob', last_name: 'burger', job: 'restaurant owner')
Earthling.create(first_name: 'linda', last_name: 'burger', job: 'restaurant owner')
Earthling.create(first_name: 'tina', last_name: 'burger', job: 'kid')

Visitation.create(date: DateTime.new(2002, 1, 1), alien_id: 1, earthling_id: 3)
Visitation.create(date: DateTime.new(2002, 2, 1), alien_id: 2, earthling_id: 1)
Visitation.create(date: DateTime.new(2002, 3, 1), alien_id: 3, earthling_id: 1)
