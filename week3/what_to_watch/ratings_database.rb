require_relative 'rating'

#
class RatingsDatabase
  def initialize(filename)
    @filename = filename
    @movie_ratings = {}
    @user_ratings = {}
  end

  def load_from_file
    CSV.foreach(@filename, col_sep: "\t") do |line|
      user_id = line[0].to_i
      movie_id = line[1].to_i
      score = line[2].to_i

      rating = Rating.new(user_id, movie_id, score)

      add_to_ratings(@movie_ratings, movie_id, rating)
      add_to_ratings(@user_ratings, user_id, rating)
    end
  end

  def add_to_ratings(ratings, key, rating)
    ratings[key] = [] unless ratings.key? key
    ratings[key] << rating
  end

  def find_by_movie_id(movie_id)
    @movie_ratings[movie_id]
  end

  def find_by_user_id(user_id)
    @user_ratings[user_id]
  end
end
