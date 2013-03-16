# == Schema Information
#
# Table name: links
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created     :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Link < ActiveRecord::Base

  attr_accessible :created, :description, :name

  belongs_to :user, :class_name => "User", :foreign_key => "user_id"

end
