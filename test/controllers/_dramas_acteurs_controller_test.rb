require "test_helper"

class DramasActeursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_acteur = _dramas_acteurs(:one)
  end

  test "should get index" do
    get _dramas_acteurs_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_acteur_url
    assert_response :success
  end

  test "should create _dramas_acteur" do
    assert_difference("DramasActeur.count") do
      post _dramas_acteurs_url, params: { _dramas_acteur: { name: @_dramas_acteur.name } }
    end

    assert_redirected_to _dramas_acteur_url(DramasActeur.last)
  end

  test "should show _dramas_acteur" do
    get _dramas_acteur_url(@_dramas_acteur)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_acteur_url(@_dramas_acteur)
    assert_response :success
  end

  test "should update _dramas_acteur" do
    patch _dramas_acteur_url(@_dramas_acteur), params: { _dramas_acteur: { name: @_dramas_acteur.name } }
    assert_redirected_to _dramas_acteur_url(@_dramas_acteur)
  end

  test "should destroy _dramas_acteur" do
    assert_difference("DramasActeur.count", -1) do
      delete _dramas_acteur_url(@_dramas_acteur)
    end

    assert_redirected_to _dramas_acteurs_url
  end
end
