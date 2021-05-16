class UsersController < ApplicationController
  # Version 1
  # before_action :set_user, only: [:show, :update, :destroy]

  before_action :authorized, only: [:auto_login]

  # REGISTER
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid email or password"}
    end
  end

  # LOGGING IN
  def login
  
    @user = User.find_by(email: params[:email].to_s.downcase)
    # @user = User.find_by(prenom: params[:prenom])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}, status: :ok
    else
      render json: {error: "Invalid email or password"}
    end
  end


  # GET /users/ CHECK USERS
  # def check_user
  #   @u = User.find_by(email: params['email'])
  #   if @u.present?
  #     #render json: {user: @u}, status: :ok
  #     return true
  #   else
  #     # render json: {error: "Invalid email or password"}
  #     return false
  #   end
  # end
   

  def auto_login
    render json: @user
  end



  # Version 1
  # # GET /users
  # def index
  #   @users = User.all

  #   render json: @users
  # end

  # # GET /users/1
  # def show
  #   render json: @user
  # end

  # # POST /users
  # def create
  #   @user = User.new(user_params)

  #   if @user.save
  #     render json: @user, status: :created, location: @user
  #   else
  #     render json: @user.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /users/1
  # def update
  #   if @user.update(user_params)
  #     render json: @user
  #   else
  #     render json: @user.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /users/1
  # def destroy
  #   @user.destroy
  # end

    private
    # Use callbacks to share common setup or constraints between actions.
    # Version 1
    # def set_user
    #   @user = User.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:nom, :prenom, :sexe, :email, :password, :password_confirmation, :matricule, :telephone, :bp, :datenaissance, :lieunaissance, :quartier, :country_id, :role_id, :anneeacademique_id, :photo)
    end
end
