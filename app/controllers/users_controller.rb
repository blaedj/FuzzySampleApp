class UsersController < ApplicationController

    has_many :links, :class_name => "link", :foreign_key => "reference_id"

  def new
  end

end
