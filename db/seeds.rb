# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
   :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
   :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
   :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
   :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
   :release_date => '13-Aug-2021'},
  {:title => 'OPPENHEIMER', :rating => 'R',
   :release_date => '21-Jul-2023'},
  {:title => 'BARBIE', :rating => 'PG-13',
   :release_date => '21-Jul-2023'},
  {:title => 'KILLERS OF THE FLOWER MOON', :rating => 'R',
   :release_date => '20-Oct-2023'},
  {:title => 'THE WANDERING EARTH II', :rating => 'N/A',
   :release_date => '22-Jan-2023'}
]

more_movies.each do |movie|
  Movie.create!(movie)
end
