require "test_helper"

class EnseignantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enseignant = enseignants(:one)
  end

  test "should get index" do
    get enseignants_url, as: :json
    assert_response :success
  end

  test "should create enseignant" do
    assert_difference('Enseignant.count') do
      post enseignants_url, params: { enseignant: { bp: @enseignant.bp, country_id: @enseignant.country_id, date_naissance: @enseignant.date_naissance, email: @enseignant.email, lieu_naissance: @enseignant.lieu_naissance, matricule: @enseignant.matricule, nom: @enseignant.nom, prenom: @enseignant.prenom, quartier: @enseignant.quartier, rue: @enseignant.rue, sexe: @enseignant.sexe, telephone: @enseignant.telephone } }, as: :json
    end

    assert_response 201
  end

  test "should show enseignant" do
    get enseignant_url(@enseignant), as: :json
    assert_response :success
  end

  test "should update enseignant" do
    patch enseignant_url(@enseignant), params: { enseignant: { bp: @enseignant.bp, country_id: @enseignant.country_id, date_naissance: @enseignant.date_naissance, email: @enseignant.email, lieu_naissance: @enseignant.lieu_naissance, matricule: @enseignant.matricule, nom: @enseignant.nom, prenom: @enseignant.prenom, quartier: @enseignant.quartier, rue: @enseignant.rue, sexe: @enseignant.sexe, telephone: @enseignant.telephone } }, as: :json
    assert_response 200
  end

  test "should destroy enseignant" do
    assert_difference('Enseignant.count', -1) do
      delete enseignant_url(@enseignant), as: :json
    end

    assert_response 204
  end
end
