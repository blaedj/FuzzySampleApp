class UsersController < ApplicationController

def index
    @users  = User.all
end

#GET /users/find_all_b
def find_all_b
    @users = User.where(:name => 'bobby')
    #.where(:name => "bob")
end

#GET /users/find_all_n
def find_all_n
	@users = User.where(:name => 'noah')
end 

  # def new
  # end

end
