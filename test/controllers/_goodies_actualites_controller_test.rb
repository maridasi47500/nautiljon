require "test_helper"

class GoodiesActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_actualite = _goodies_actualites(:one)
  end

  test "should get index" do
    get _goodies_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_actualite_url
    assert_response :success
  end

  test "should create _goodies_actualite" do
    assert_difference("GoodiesActualite.count") do
      post _goodies_actualites_url, params: { _goodies_actualite: { name: @_goodies_actualite.name } }
    end

    assert_redirected_to _goodies_actualite_url(GoodiesActualite.last)
  end

  test "should show _goodies_actualite" do
    get _goodies_actualite_url(@_goodies_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_actualite_url(@_goodies_actualite)
    assert_response :success
  end

  test "should update _goodies_actualite" do
    patch _goodies_actualite_url(@_goodies_actualite), params: { _goodies_actualite: { name: @_goodies_actualite.name } }
    assert_redirected_to _goodies_actualite_url(@_goodies_actualite)
  end

  test "should destroy _goodies_actualite" do
    assert_difference("GoodiesActualite.count", -1) do
      delete _goodies_actualite_url(@_goodies_actualite)
    end

    assert_redirected_to _goodies_actualites_url
  end
end
