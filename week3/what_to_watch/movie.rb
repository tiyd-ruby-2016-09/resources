#
class Movie
  attr_reader :id, :title, :release_date, :ratings

  def initialize(id, title, release_date, ratings)
    @id = id
    @title = title
    @release_date = release_date
    @ratings = ratings
  end

  def average_rating
    total_score = 0

    @ratings.each do |rating|
      total_score += rating.score
    end

    total_score.to_f / @ratings.count
  end
end
