class RankingsController < ApplicationController
  def index
    # グラフ用
    @prefectures =  Prefecture.all
    @labelline = Array.new
    @score = Array.new
    @prefectures.each do |g|
        @labelline.push(g.prefecture_name)
        @score.push(g.posts.count)
    end

    # ランキング
    @user_ranking = EndUser.find(Post.group(:end_user_id).order('count(end_user_id) desc').limit(10).pluck(:end_user_id))

  end
end
