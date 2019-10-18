class RankingsController < ApplicationController
  def index
    @prefectures =  Prefecture.all
    @labelline = Array.new
    @prefectures.each do |g|
        @labelline.push(g.prefecture_name)
    end

    @prefectures =  Prefecture.all
    @score = Array.new
    @prefectures.each do |g|
        @score.push(g.posts.count)
    end

  end
end
