require "test_helper"

class ClasMatieresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clas_matiere = clas_matieres(:one)
  end

  test "should get index" do
    get clas_matieres_url, as: :json
    assert_response :success
  end

  test "should create clas_matiere" do
    assert_difference('ClasMatiere.count') do
      post clas_matieres_url, params: { clas_matiere: { cla_id: @clas_matiere.cla_id, matiere_id: @clas_matiere.matiere_id } }, as: :json
    end

    assert_response 201
  end

  test "should show clas_matiere" do
    get clas_matiere_url(@clas_matiere), as: :json
    assert_response :success
  end

  test "should update clas_matiere" do
    patch clas_matiere_url(@clas_matiere), params: { clas_matiere: { cla_id: @clas_matiere.cla_id, matiere_id: @clas_matiere.matiere_id } }, as: :json
    assert_response 200
  end

  test "should destroy clas_matiere" do
    assert_difference('ClasMatiere.count', -1) do
      delete clas_matiere_url(@clas_matiere), as: :json
    end

    assert_response 204
  end
end
