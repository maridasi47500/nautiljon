require "test_helper"

class PersonnalitesIdMembresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_id_membre = _personnalites_id_membres(:one)
  end

  test "should get index" do
    get _personnalites_id_membres_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_id_membre_url
    assert_response :success
  end

  test "should create _personnalites_id_membre" do
    assert_difference("PersonnalitesIdMembre.count") do
      post _personnalites_id_membres_url, params: { _personnalites_id_membre: { name: @_personnalites_id_membre.name } }
    end

    assert_redirected_to _personnalites_id_membre_url(PersonnalitesIdMembre.last)
  end

  test "should show _personnalites_id_membre" do
    get _personnalites_id_membre_url(@_personnalites_id_membre)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_id_membre_url(@_personnalites_id_membre)
    assert_response :success
  end

  test "should update _personnalites_id_membre" do
    patch _personnalites_id_membre_url(@_personnalites_id_membre), params: { _personnalites_id_membre: { name: @_personnalites_id_membre.name } }
    assert_redirected_to _personnalites_id_membre_url(@_personnalites_id_membre)
  end

  test "should destroy _personnalites_id_membre" do
    assert_difference("PersonnalitesIdMembre.count", -1) do
      delete _personnalites_id_membre_url(@_personnalites_id_membre)
    end

    assert_redirected_to _personnalites_id_membres_url
  end
end
