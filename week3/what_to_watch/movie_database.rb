require 'csv'
require_relative 'movie'

#
class MovieDatabase
  def initialize(filename, ratings_database)
    @filename = filename
    @ratings_database = ratings_database
    @movies = {}
  end

  def load_from_file
    CSV.foreach(@filename, encoding: 'iso-8859-1', col_sep: '|') do |line|
      id = line[0].to_i
      title = line[1]
      release_date = line[2]
      ratings = @ratings_database.find_by_movie_id(id)

      @movies[id] = Movie.new(id, title, release_date, ratings)
    end
  end

  def find_all
    @movies
  end

  def find_by_id(id)
    @movies[id]
  end
end
