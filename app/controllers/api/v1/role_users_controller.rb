class Api::V1::RoleUsersController < ApplicationController
  before_action :set_role_user, only: [:show, :update, :destroy]

  # GET /role_users
  def index
    @role_users = RoleUser.all.order(created_at: :desc)

    render json: @role_users
  end

  # GET /role_users/1
  def show
    render json: @role_user
  end

  # POST /role_users
  def create
    @role_user = RoleUser.new(role_user_params)

    if @role_user.save
      render json: @role_user, status: :created, location: api_v1_role_user_url(@role_user)
    else
      render json: @role_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /role_users/1
  def update
    if @role_user.update(role_user_params)
      render json: @role_user
    else
      render json: @role_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /role_users/1
  def destroy
    @role_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role_user
      @role_user = RoleUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def role_user_params
      params.require(:role_user).permit(:role_id, :user_id)
    end
end
