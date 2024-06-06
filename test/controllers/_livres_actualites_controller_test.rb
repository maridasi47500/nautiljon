require "test_helper"

class LivresActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_actualite = _livres_actualites(:one)
  end

  test "should get index" do
    get _livres_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_actualite_url
    assert_response :success
  end

  test "should create _livres_actualite" do
    assert_difference("LivresActualite.count") do
      post _livres_actualites_url, params: { _livres_actualite: { name: @_livres_actualite.name } }
    end

    assert_redirected_to _livres_actualite_url(LivresActualite.last)
  end

  test "should show _livres_actualite" do
    get _livres_actualite_url(@_livres_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_actualite_url(@_livres_actualite)
    assert_response :success
  end

  test "should update _livres_actualite" do
    patch _livres_actualite_url(@_livres_actualite), params: { _livres_actualite: { name: @_livres_actualite.name } }
    assert_redirected_to _livres_actualite_url(@_livres_actualite)
  end

  test "should destroy _livres_actualite" do
    assert_difference("LivresActualite.count", -1) do
      delete _livres_actualite_url(@_livres_actualite)
    end

    assert_redirected_to _livres_actualites_url
  end
end
