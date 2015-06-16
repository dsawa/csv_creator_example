zombies_data = [
  { name: 'Dorian', rotting: false, age: 25, turn_date: DateTime.new(2015, 4, 10) },
  { name: 'John', rotting: false, age: 15, turn_date: DateTime.new(2015, 3, 5) },
  { name: 'Jane', rotting: false, age: 18, turn_date: DateTime.new(2015, 2, 15) },
  { name: 'Chris', rotting: true, age: 45, turn_date: DateTime.new(2015, 4, 22) },
  { name: 'Rick', rotting: true, age: 64, turn_date: DateTime.new(2015, 5, 12) }
]

Zombie.create(zombies_data)
puts "#{zombies_data.size} zombies created!"
