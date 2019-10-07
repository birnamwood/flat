class Relationship < ApplicationRecord
    # railsでは外部キーをクラス_idとするため、クラスを設定する
    belongs_to :follower, class_name: "End_user"
    belongs_to :followed, class_name: "End_user"
end
