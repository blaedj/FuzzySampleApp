class UsersController < ApplicationController

    def index
        @users  = User.all
    end

    #GET /users/find_all_b
    def find_all_b
        @users = User.where('name like ?', '%b%')
        end

    #GET /users/find_all_noah
    def find_all_noah
        @users = User.where('name like ?', '%noah%')
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new( params[:user] )

        if @user.save
            sign_in @user
            flash[:success] = "Welcome to our website!"
            redirect_to @user
        else
            render 'new'
        end

    end

end
