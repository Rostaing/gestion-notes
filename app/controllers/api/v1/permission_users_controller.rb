class Api::V1::PermissionUsersController < ApplicationController
  before_action :set_permission_user, only: [:show, :update, :destroy]

  # GET /permission_users
  def index
    @permission_users = PermissionUser.all

    render json: @permission_users
  end

  # GET /permission_users/1
  def show
    render json: @permission_user
  end

  # POST /permission_users
  def create
    @permission_user = PermissionUser.new(permission_user_params)

    if @permission_user.save
      render json: @permission_user, status: :created, location: api_v1_permission_user_url(@permission_user)
    else
      render json: @permission_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /permission_users/1
  def update
    if @permission_user.update(permission_user_params)
      render json: @permission_user
    else
      render json: @permission_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /permission_users/1
  def destroy
    @permission_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permission_user
      @permission_user = PermissionUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def permission_user_params
      params.require(:permission_user).permit(:permission_id, :user_id)
    end
end
