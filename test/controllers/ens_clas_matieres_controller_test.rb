require "test_helper"

class EnsClasMatieresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ens_clas_matiere = ens_clas_matieres(:one)
  end

  test "should get index" do
    get ens_clas_matieres_url, as: :json
    assert_response :success
  end

  test "should create ens_clas_matiere" do
    assert_difference('EnsClasMatiere.count') do
      post ens_clas_matieres_url, params: { ens_clas_matiere: { anneeacademique_id: @ens_clas_matiere.anneeacademique_id, cla_id: @ens_clas_matiere.cla_id, enseignant_id: @ens_clas_matiere.enseignant_id, matiere_id: @ens_clas_matiere.matiere_id } }, as: :json
    end

    assert_response 201
  end

  test "should show ens_clas_matiere" do
    get ens_clas_matiere_url(@ens_clas_matiere), as: :json
    assert_response :success
  end

  test "should update ens_clas_matiere" do
    patch ens_clas_matiere_url(@ens_clas_matiere), params: { ens_clas_matiere: { anneeacademique_id: @ens_clas_matiere.anneeacademique_id, cla_id: @ens_clas_matiere.cla_id, enseignant_id: @ens_clas_matiere.enseignant_id, matiere_id: @ens_clas_matiere.matiere_id } }, as: :json
    assert_response 200
  end

  test "should destroy ens_clas_matiere" do
    assert_difference('EnsClasMatiere.count', -1) do
      delete ens_clas_matiere_url(@ens_clas_matiere), as: :json
    end

    assert_response 204
  end
end
