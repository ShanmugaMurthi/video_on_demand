# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movies = Movie.create([{ title: 'Star Wars', plot: 'Plot of Star Wars', quality: 'HD', price: 5.5 }, { title: 'Lord of the Rings', plot: 'Plot of Lord of the Rings', quality: 'HD', price: 5.5 }])
seasons = Season.create([{ title: 'Game of Thrones', plot: 'Plot of Game of Thrones', quality: 'HD', price: 3.5 }, { title: 'Breaking Bad', plot: 'Plot of Breaking Bad', quality: 'HD', price: 3.5 }])

Episode.create(title: 'Game of Thrones Episode 2', plot: 'Plot of Game of Thrones Episode 2', sequence_number: 2, season: seasons.first)
Episode.create(title: 'Game of Thrones Episode 1', plot: 'Plot of Game of Thrones Episode 1', sequence_number: 1, season: seasons.first)

Episode.create(title: 'Breaking Bad Episode 2', plot: 'Plot of Breaking Bad Episode 2', sequence_number: 2, season: seasons.second)
Episode.create(title: 'Breaking Bad Episode 1', plot: 'Plot of Breaking Bad Episode 1', sequence_number: 1, season: seasons.second)
