require_relative 'movie_database'
require_relative 'ratings_database'

def main
  ratings_database = RatingsDatabase.new('data/u.data')

  ratings_database.load_from_file

  # movie_database = MovieDatabase.new('data/u.item', ratings_database)
  #
  # movie_database.load_from_file

  # movies = movie_database.find_all

  # p movies[1234].title
  # p movies[1234].average_rating

  # ratings = ratings_database.find_by_movie_id(1001)

  # p ratings

  ratings = ratings_database.find_by_user_id(666)

  p ratings
end

main if __FILE__ == $PROGRAM_NAME
