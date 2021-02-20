require "test_helper"

class TypeevaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typeevaluation = typeevaluations(:one)
  end

  test "should get index" do
    get typeevaluations_url, as: :json
    assert_response :success
  end

  test "should create typeevaluation" do
    assert_difference('Typeevaluation.count') do
      post typeevaluations_url, params: { typeevaluation: { libelle: @typeevaluation.libelle } }, as: :json
    end

    assert_response 201
  end

  test "should show typeevaluation" do
    get typeevaluation_url(@typeevaluation), as: :json
    assert_response :success
  end

  test "should update typeevaluation" do
    patch typeevaluation_url(@typeevaluation), params: { typeevaluation: { libelle: @typeevaluation.libelle } }, as: :json
    assert_response 200
  end

  test "should destroy typeevaluation" do
    assert_difference('Typeevaluation.count', -1) do
      delete typeevaluation_url(@typeevaluation), as: :json
    end

    assert_response 204
  end
end
