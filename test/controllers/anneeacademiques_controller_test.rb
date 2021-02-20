require "test_helper"

class AnneeacademiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anneeacademique = anneeacademiques(:one)
  end

  test "should get index" do
    get anneeacademiques_url, as: :json
    assert_response :success
  end

  test "should create anneeacademique" do
    assert_difference('Anneeacademique.count') do
      post anneeacademiques_url, params: { anneeacademique: { date_debut: @anneeacademique.date_debut, date_fin: @anneeacademique.date_fin, libelle: @anneeacademique.libelle } }, as: :json
    end

    assert_response 201
  end

  test "should show anneeacademique" do
    get anneeacademique_url(@anneeacademique), as: :json
    assert_response :success
  end

  test "should update anneeacademique" do
    patch anneeacademique_url(@anneeacademique), params: { anneeacademique: { date_debut: @anneeacademique.date_debut, date_fin: @anneeacademique.date_fin, libelle: @anneeacademique.libelle } }, as: :json
    assert_response 200
  end

  test "should destroy anneeacademique" do
    assert_difference('Anneeacademique.count', -1) do
      delete anneeacademique_url(@anneeacademique), as: :json
    end

    assert_response 204
  end
end
