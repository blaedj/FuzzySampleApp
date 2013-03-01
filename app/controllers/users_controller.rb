class UsersController < ApplicationController

def index
    @users  = User.all
end

def find_all_b
    @bobby = User.where(:name => 'bob')
    #.where(:name => "bob")
end

  def new
  end

end
