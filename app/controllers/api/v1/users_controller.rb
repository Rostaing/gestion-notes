class Api::V1::UsersController < ApplicationController
    respond_to :json
    before_action :set_user, only: [:show, :update, :destroy]

    
    def index
      @users = User.all.order(created_at: :desc)
      
      render json: @users
    end
  
    def show
      render json: @user
    end
  
    # Creating users
    def create
      @user = User.new(user_params)
  
      if @user.save 
        render json: @user, status: 201 # @user
      else
        render json: { errors: @user.errors}, status: 422 # @user
      end
    end
  
    # Updating users
    def update
      if @user.update(user_params)
        render json: @user, status: 200 # @user
      else
        render json: { errors: @user.errors }, status: 422 # @user
      end
    end
  
    # Deleting users
    def destroy
      # @user = User.find(params[:id])
      @user.destroy
      # head 204
    end
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
  
    def user_params
     params.require(:user).permit(:email, :password, :password_confirmation, :deleted_at)
    end
end