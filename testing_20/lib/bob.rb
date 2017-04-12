require 'csv'

class Bob
  attr_reader :paint_palatte

  def initialize(file)
    @file = file
    @paint_palatte = []
  end

  def final_episode
    episode = {}

    CSV.foreach(@file, headers: true) do |row|
      episode["EPISODE"] = row["EPISODE"]
    end

    episode["EPISODE"]
  end

  def paint_colors
    paint_palatte.map { |paint| paint.color }
  end

  def paint_amount
    paint_palatte.reduce(0) { |memo, paint| memo + paint.amount }
  end

end
