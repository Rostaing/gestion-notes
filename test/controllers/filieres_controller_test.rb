require "test_helper"

class FilieresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filiere = filieres(:one)
  end

  test "should get index" do
    get filieres_url, as: :json
    assert_response :success
  end

  test "should create filiere" do
    assert_difference('Filiere.count') do
      post filieres_url, params: { filiere: { code: @filiere.code, libelle: @filiere.libelle, systeme_id: @filiere.systeme_id } }, as: :json
    end

    assert_response 201
  end

  test "should show filiere" do
    get filiere_url(@filiere), as: :json
    assert_response :success
  end

  test "should update filiere" do
    patch filiere_url(@filiere), params: { filiere: { code: @filiere.code, libelle: @filiere.libelle, systeme_id: @filiere.systeme_id } }, as: :json
    assert_response 200
  end

  test "should destroy filiere" do
    assert_difference('Filiere.count', -1) do
      delete filiere_url(@filiere), as: :json
    end

    assert_response 204
  end
end
