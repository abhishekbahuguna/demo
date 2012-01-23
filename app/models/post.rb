class Post < ActiveRecord::Base
validates :title, :content, :user_id, :presence => true
belongs_to :User
end
