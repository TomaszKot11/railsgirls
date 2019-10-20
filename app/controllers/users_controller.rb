class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end

    # def index
    #     @user = User.all
    #     render json: @user
    # end

    # def create_user
    #     my_params = params.require(:user).permit!
    #     User.create!(my_params)
    # end
end
