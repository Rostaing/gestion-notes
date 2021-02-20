require "test_helper"

class RoleUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @role_user = role_users(:one)
  end

  test "should get index" do
    get role_users_url, as: :json
    assert_response :success
  end

  test "should create role_user" do
    assert_difference('RoleUser.count') do
      post role_users_url, params: { role_user: { role_id: @role_user.role_id, user_id: @role_user.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show role_user" do
    get role_user_url(@role_user), as: :json
    assert_response :success
  end

  test "should update role_user" do
    patch role_user_url(@role_user), params: { role_user: { role_id: @role_user.role_id, user_id: @role_user.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy role_user" do
    assert_difference('RoleUser.count', -1) do
      delete role_user_url(@role_user), as: :json
    end

    assert_response 204
  end
end
