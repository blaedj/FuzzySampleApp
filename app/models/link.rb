class Link < ActiveRecord::Base

  attr_accessible :created, :description, :name

  belongs_to :user, :class_name => "User", :foreign_key => "user_id"

end
