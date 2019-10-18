class RankingsController < ApplicationController
  def index
    @prefectures =  Prefecture.all
    @labelline = Array.new
    @score = Array.new
    @prefectures.each do |g|
        @labelline.push(g.prefecture_name)
        @score.push(g.posts.count)
    end

  end
end
