require "test_helper"

class DoujinshisActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_actualite = _doujinshis_actualites(:one)
  end

  test "should get index" do
    get _doujinshis_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_actualite_url
    assert_response :success
  end

  test "should create _doujinshis_actualite" do
    assert_difference("DoujinshisActualite.count") do
      post _doujinshis_actualites_url, params: { _doujinshis_actualite: { name: @_doujinshis_actualite.name } }
    end

    assert_redirected_to _doujinshis_actualite_url(DoujinshisActualite.last)
  end

  test "should show _doujinshis_actualite" do
    get _doujinshis_actualite_url(@_doujinshis_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_actualite_url(@_doujinshis_actualite)
    assert_response :success
  end

  test "should update _doujinshis_actualite" do
    patch _doujinshis_actualite_url(@_doujinshis_actualite), params: { _doujinshis_actualite: { name: @_doujinshis_actualite.name } }
    assert_redirected_to _doujinshis_actualite_url(@_doujinshis_actualite)
  end

  test "should destroy _doujinshis_actualite" do
    assert_difference("DoujinshisActualite.count", -1) do
      delete _doujinshis_actualite_url(@_doujinshis_actualite)
    end

    assert_redirected_to _doujinshis_actualites_url
  end
end
