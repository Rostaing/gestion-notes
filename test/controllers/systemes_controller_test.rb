require "test_helper"

class SystemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @systeme = systemes(:one)
  end

  test "should get index" do
    get systemes_url, as: :json
    assert_response :success
  end

  test "should create systeme" do
    assert_difference('Systeme.count') do
      post systemes_url, params: { systeme: { libelle: @systeme.libelle } }, as: :json
    end

    assert_response 201
  end

  test "should show systeme" do
    get systeme_url(@systeme), as: :json
    assert_response :success
  end

  test "should update systeme" do
    patch systeme_url(@systeme), params: { systeme: { libelle: @systeme.libelle } }, as: :json
    assert_response 200
  end

  test "should destroy systeme" do
    assert_difference('Systeme.count', -1) do
      delete systeme_url(@systeme), as: :json
    end

    assert_response 204
  end
end
