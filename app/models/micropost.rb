class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :content, :length => { :maximum => 140 }
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
end
