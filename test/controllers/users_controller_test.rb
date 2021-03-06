require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { anneeacademique_id: @user.anneeacademique_id, bp: @user.bp, country_id: @user.country_id, datenaissance: @user.datenaissance, email: @user.email, lieunaissance: @user.lieunaissance, matricule: @user.matricule, nom: @user.nom, password: 'secret', password_confirmation: 'secret', prenom: @user.prenom, quartier: @user.quartier, role_id: @user.role_id, sexe: @user.sexe, telephone: @user.telephone } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { anneeacademique_id: @user.anneeacademique_id, bp: @user.bp, country_id: @user.country_id, datenaissance: @user.datenaissance, email: @user.email, lieunaissance: @user.lieunaissance, matricule: @user.matricule, nom: @user.nom, password: 'secret', password_confirmation: 'secret', prenom: @user.prenom, quartier: @user.quartier, role_id: @user.role_id, sexe: @user.sexe, telephone: @user.telephone } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
