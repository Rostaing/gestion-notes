require "test_helper"

class ClasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cla = clas(:one)
  end

  test "should get index" do
    get clas_url, as: :json
    assert_response :success
  end

  test "should create cla" do
    assert_difference('Cla.count') do
      post clas_url, params: { cla: { code: @cla.code, filiere_id: @cla.filiere_id, libelle: @cla.libelle } }, as: :json
    end

    assert_response 201
  end

  test "should show cla" do
    get cla_url(@cla), as: :json
    assert_response :success
  end

  test "should update cla" do
    patch cla_url(@cla), params: { cla: { code: @cla.code, filiere_id: @cla.filiere_id, libelle: @cla.libelle } }, as: :json
    assert_response 200
  end

  test "should destroy cla" do
    assert_difference('Cla.count', -1) do
      delete cla_url(@cla), as: :json
    end

    assert_response 204
  end
end
