class UsersController < ApplicationController

def index
    @users  = User.all
end

def find_all
    User.all
end

  def new
  end

end
