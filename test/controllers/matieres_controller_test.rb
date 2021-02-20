require "test_helper"

class MatieresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matiere = matieres(:one)
  end

  test "should get index" do
    get matieres_url, as: :json
    assert_response :success
  end

  test "should create matiere" do
    assert_difference('Matiere.count') do
      post matieres_url, params: { matiere: { code: @matiere.code, coefficient: @matiere.coefficient, libelle: @matiere.libelle } }, as: :json
    end

    assert_response 201
  end

  test "should show matiere" do
    get matiere_url(@matiere), as: :json
    assert_response :success
  end

  test "should update matiere" do
    patch matiere_url(@matiere), params: { matiere: { code: @matiere.code, coefficient: @matiere.coefficient, libelle: @matiere.libelle } }, as: :json
    assert_response 200
  end

  test "should destroy matiere" do
    assert_difference('Matiere.count', -1) do
      delete matiere_url(@matiere), as: :json
    end

    assert_response 204
  end
end
