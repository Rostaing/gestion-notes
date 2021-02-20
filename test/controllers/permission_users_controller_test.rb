require "test_helper"

class PermissionUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @permission_user = permission_users(:one)
  end

  test "should get index" do
    get permission_users_url, as: :json
    assert_response :success
  end

  test "should create permission_user" do
    assert_difference('PermissionUser.count') do
      post permission_users_url, params: { permission_user: { permission_id: @permission_user.permission_id, user_id: @permission_user.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show permission_user" do
    get permission_user_url(@permission_user), as: :json
    assert_response :success
  end

  test "should update permission_user" do
    patch permission_user_url(@permission_user), params: { permission_user: { permission_id: @permission_user.permission_id, user_id: @permission_user.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy permission_user" do
    assert_difference('PermissionUser.count', -1) do
      delete permission_user_url(@permission_user), as: :json
    end

    assert_response 204
  end
end
