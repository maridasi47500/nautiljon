require "test_helper"

class PhotobooksActualiteMinisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_actualite_mini = _photobooks_actualite_minis(:one)
  end

  test "should get index" do
    get _photobooks_actualite_minis_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_actualite_mini_url
    assert_response :success
  end

  test "should create _photobooks_actualite_mini" do
    assert_difference("PhotobooksActualiteMini.count") do
      post _photobooks_actualite_minis_url, params: { _photobooks_actualite_mini: { name: @_photobooks_actualite_mini.name } }
    end

    assert_redirected_to _photobooks_actualite_mini_url(PhotobooksActualiteMini.last)
  end

  test "should show _photobooks_actualite_mini" do
    get _photobooks_actualite_mini_url(@_photobooks_actualite_mini)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_actualite_mini_url(@_photobooks_actualite_mini)
    assert_response :success
  end

  test "should update _photobooks_actualite_mini" do
    patch _photobooks_actualite_mini_url(@_photobooks_actualite_mini), params: { _photobooks_actualite_mini: { name: @_photobooks_actualite_mini.name } }
    assert_redirected_to _photobooks_actualite_mini_url(@_photobooks_actualite_mini)
  end

  test "should destroy _photobooks_actualite_mini" do
    assert_difference("PhotobooksActualiteMini.count", -1) do
      delete _photobooks_actualite_mini_url(@_photobooks_actualite_mini)
    end

    assert_redirected_to _photobooks_actualite_minis_url
  end
end
