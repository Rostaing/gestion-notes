require "test_helper"

class BulletinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bulletin = bulletins(:one)
  end

  test "should get index" do
    get bulletins_url, as: :json
    assert_response :success
  end

  test "should create bulletin" do
    assert_difference('Bulletin.count') do
      post bulletins_url, params: { bulletin: { date_edition: @bulletin.date_edition, date_retrait: @bulletin.date_retrait, decision_conseil_prof: @bulletin.decision_conseil_prof, effectif_clas: @bulletin.effectif_clas, etudiant_id: @bulletin.etudiant_id, mention_id: @bulletin.mention_id, moyenne_etudiant: @bulletin.moyenne_etudiant, moyenne_max_clas: @bulletin.moyenne_max_clas, moyenne_min_clas: @bulletin.moyenne_min_clas, rang_etudiant: @bulletin.rang_etudiant } }, as: :json
    end

    assert_response 201
  end

  test "should show bulletin" do
    get bulletin_url(@bulletin), as: :json
    assert_response :success
  end

  test "should update bulletin" do
    patch bulletin_url(@bulletin), params: { bulletin: { date_edition: @bulletin.date_edition, date_retrait: @bulletin.date_retrait, decision_conseil_prof: @bulletin.decision_conseil_prof, effectif_clas: @bulletin.effectif_clas, etudiant_id: @bulletin.etudiant_id, mention_id: @bulletin.mention_id, moyenne_etudiant: @bulletin.moyenne_etudiant, moyenne_max_clas: @bulletin.moyenne_max_clas, moyenne_min_clas: @bulletin.moyenne_min_clas, rang_etudiant: @bulletin.rang_etudiant } }, as: :json
    assert_response 200
  end

  test "should destroy bulletin" do
    assert_difference('Bulletin.count', -1) do
      delete bulletin_url(@bulletin), as: :json
    end

    assert_response 204
  end
end
