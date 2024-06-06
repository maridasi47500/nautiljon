require "test_helper"

class DramasActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_actualite = _dramas_actualites(:one)
  end

  test "should get index" do
    get _dramas_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_actualite_url
    assert_response :success
  end

  test "should create _dramas_actualite" do
    assert_difference("DramasActualite.count") do
      post _dramas_actualites_url, params: { _dramas_actualite: { name: @_dramas_actualite.name } }
    end

    assert_redirected_to _dramas_actualite_url(DramasActualite.last)
  end

  test "should show _dramas_actualite" do
    get _dramas_actualite_url(@_dramas_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_actualite_url(@_dramas_actualite)
    assert_response :success
  end

  test "should update _dramas_actualite" do
    patch _dramas_actualite_url(@_dramas_actualite), params: { _dramas_actualite: { name: @_dramas_actualite.name } }
    assert_redirected_to _dramas_actualite_url(@_dramas_actualite)
  end

  test "should destroy _dramas_actualite" do
    assert_difference("DramasActualite.count", -1) do
      delete _dramas_actualite_url(@_dramas_actualite)
    end

    assert_redirected_to _dramas_actualites_url
  end
end
