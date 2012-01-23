class User < ActiveRecord::Base
validates :name, :age, :gender, :presence => true
validates :name , :format => {:with => /[a-z|A-Z]+\z/}
validates :age, :numericality => true
validates :gender, :format => {:with => /[M|m|F|f]/, :message => "Please enter 'M' or 'F'"}
validates :gender, :length => {:is => 1, :message => "Please enter 'M' or 'F'"}
has_many :Posts
end
