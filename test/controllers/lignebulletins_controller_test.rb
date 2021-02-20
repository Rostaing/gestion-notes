require "test_helper"

class LignebulletinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lignebulletin = lignebulletins(:one)
  end

  test "should get index" do
    get lignebulletins_url, as: :json
    assert_response :success
  end

  test "should create lignebulletin" do
    assert_difference('Lignebulletin.count') do
      post lignebulletins_url, params: { lignebulletin: { bulletin_id: @lignebulletin.bulletin_id, coefficient: @lignebulletin.coefficient, matiere: @lignebulletin.matiere, moyenne_clas: @lignebulletin.moyenne_clas, moyenne_etudiant: @lignebulletin.moyenne_etudiant } }, as: :json
    end

    assert_response 201
  end

  test "should show lignebulletin" do
    get lignebulletin_url(@lignebulletin), as: :json
    assert_response :success
  end

  test "should update lignebulletin" do
    patch lignebulletin_url(@lignebulletin), params: { lignebulletin: { bulletin_id: @lignebulletin.bulletin_id, coefficient: @lignebulletin.coefficient, matiere: @lignebulletin.matiere, moyenne_clas: @lignebulletin.moyenne_clas, moyenne_etudiant: @lignebulletin.moyenne_etudiant } }, as: :json
    assert_response 200
  end

  test "should destroy lignebulletin" do
    assert_difference('Lignebulletin.count', -1) do
      delete lignebulletin_url(@lignebulletin), as: :json
    end

    assert_response 204
  end
end
