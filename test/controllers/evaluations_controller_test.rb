require "test_helper"

class EvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluation = evaluations(:one)
  end

  test "should get index" do
    get evaluations_url, as: :json
    assert_response :success
  end

  test "should create evaluation" do
    assert_difference('Evaluation.count') do
      post evaluations_url, params: { evaluation: { anneeacademique_id: @evaluation.anneeacademique_id, date_evaluation: @evaluation.date_evaluation, matiere_id: @evaluation.matiere_id, typeevaluation_id: @evaluation.typeevaluation_id } }, as: :json
    end

    assert_response 201
  end

  test "should show evaluation" do
    get evaluation_url(@evaluation), as: :json
    assert_response :success
  end

  test "should update evaluation" do
    patch evaluation_url(@evaluation), params: { evaluation: { anneeacademique_id: @evaluation.anneeacademique_id, date_evaluation: @evaluation.date_evaluation, matiere_id: @evaluation.matiere_id, typeevaluation_id: @evaluation.typeevaluation_id } }, as: :json
    assert_response 200
  end

  test "should destroy evaluation" do
    assert_difference('Evaluation.count', -1) do
      delete evaluation_url(@evaluation), as: :json
    end

    assert_response 204
  end
end
