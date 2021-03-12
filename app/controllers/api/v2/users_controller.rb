class Api::V2::UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    # GET /roles
    def index
      @users = User.all.order(created_at: :desc)
  
      render json: @users
    end
  
    # GET /roles/1
    def show
      render json: @user
    end
  
    # POST /roles
    # def create
    #   @user = Role.new(user_params)
  
    #   if @user.save
    #     render json: @user, status: :created, location: api_v2_role_url(@user)
    #   else
    #     render json: @user.errors, status: :unprocessable_entity
    #   end
    # end
  
    # PATCH/PUT /roles/1
    def update
      if @user.update(user_params)
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /roles/1
    def destroy
      @user.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def user_params
        params.require(:user).permit(
          :nom, :prenom, :sexe, :email, :password, :password_confirmation, :matricule, :telephone, :bp, :datenaissance, :lieunaissance, :quartier, :country_id, :role_id)
      end
end
    
      

    