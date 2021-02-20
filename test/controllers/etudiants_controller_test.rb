require "test_helper"

class EtudiantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etudiant = etudiants(:one)
  end

  test "should get index" do
    get etudiants_url, as: :json
    assert_response :success
  end

  test "should create etudiant" do
    assert_difference('Etudiant.count') do
      post etudiants_url, params: { etudiant: { anneeacademique_id: @etudiant.anneeacademique_id, bp: @etudiant.bp, cla_id: @etudiant.cla_id, country_id: @etudiant.country_id, date_naissance: @etudiant.date_naissance, email: @etudiant.email, lieu_naissance: @etudiant.lieu_naissance, matricule: @etudiant.matricule, nom: @etudiant.nom, prenom: @etudiant.prenom, quartier: @etudiant.quartier, rue: @etudiant.rue, sexe: @etudiant.sexe, telephone: @etudiant.telephone } }, as: :json
    end

    assert_response 201
  end

  test "should show etudiant" do
    get etudiant_url(@etudiant), as: :json
    assert_response :success
  end

  test "should update etudiant" do
    patch etudiant_url(@etudiant), params: { etudiant: { anneeacademique_id: @etudiant.anneeacademique_id, bp: @etudiant.bp, cla_id: @etudiant.cla_id, country_id: @etudiant.country_id, date_naissance: @etudiant.date_naissance, email: @etudiant.email, lieu_naissance: @etudiant.lieu_naissance, matricule: @etudiant.matricule, nom: @etudiant.nom, prenom: @etudiant.prenom, quartier: @etudiant.quartier, rue: @etudiant.rue, sexe: @etudiant.sexe, telephone: @etudiant.telephone } }, as: :json
    assert_response 200
  end

  test "should destroy etudiant" do
    assert_difference('Etudiant.count', -1) do
      delete etudiant_url(@etudiant), as: :json
    end

    assert_response 204
  end
end
