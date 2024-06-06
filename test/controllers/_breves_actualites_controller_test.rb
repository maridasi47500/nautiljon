require "test_helper"

class BrevesActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_actualite = _breves_actualites(:one)
  end

  test "should get index" do
    get _breves_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_actualite_url
    assert_response :success
  end

  test "should create _breves_actualite" do
    assert_difference("BrevesActualite.count") do
      post _breves_actualites_url, params: { _breves_actualite: { name: @_breves_actualite.name } }
    end

    assert_redirected_to _breves_actualite_url(BrevesActualite.last)
  end

  test "should show _breves_actualite" do
    get _breves_actualite_url(@_breves_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_actualite_url(@_breves_actualite)
    assert_response :success
  end

  test "should update _breves_actualite" do
    patch _breves_actualite_url(@_breves_actualite), params: { _breves_actualite: { name: @_breves_actualite.name } }
    assert_redirected_to _breves_actualite_url(@_breves_actualite)
  end

  test "should destroy _breves_actualite" do
    assert_difference("BrevesActualite.count", -1) do
      delete _breves_actualite_url(@_breves_actualite)
    end

    assert_redirected_to _breves_actualites_url
  end
end
