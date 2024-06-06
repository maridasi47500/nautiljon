require "test_helper"

class PhotobooksActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_actualite = _photobooks_actualites(:one)
  end

  test "should get index" do
    get _photobooks_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_actualite_url
    assert_response :success
  end

  test "should create _photobooks_actualite" do
    assert_difference("PhotobooksActualite.count") do
      post _photobooks_actualites_url, params: { _photobooks_actualite: { name: @_photobooks_actualite.name } }
    end

    assert_redirected_to _photobooks_actualite_url(PhotobooksActualite.last)
  end

  test "should show _photobooks_actualite" do
    get _photobooks_actualite_url(@_photobooks_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_actualite_url(@_photobooks_actualite)
    assert_response :success
  end

  test "should update _photobooks_actualite" do
    patch _photobooks_actualite_url(@_photobooks_actualite), params: { _photobooks_actualite: { name: @_photobooks_actualite.name } }
    assert_redirected_to _photobooks_actualite_url(@_photobooks_actualite)
  end

  test "should destroy _photobooks_actualite" do
    assert_difference("PhotobooksActualite.count", -1) do
      delete _photobooks_actualite_url(@_photobooks_actualite)
    end

    assert_redirected_to _photobooks_actualites_url
  end
end
