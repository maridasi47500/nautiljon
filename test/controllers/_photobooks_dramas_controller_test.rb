require "test_helper"

class PhotobooksDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_drama = _photobooks_dramas(:one)
  end

  test "should get index" do
    get _photobooks_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_drama_url
    assert_response :success
  end

  test "should create _photobooks_drama" do
    assert_difference("PhotobooksDrama.count") do
      post _photobooks_dramas_url, params: { _photobooks_drama: { name: @_photobooks_drama.name } }
    end

    assert_redirected_to _photobooks_drama_url(PhotobooksDrama.last)
  end

  test "should show _photobooks_drama" do
    get _photobooks_drama_url(@_photobooks_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_drama_url(@_photobooks_drama)
    assert_response :success
  end

  test "should update _photobooks_drama" do
    patch _photobooks_drama_url(@_photobooks_drama), params: { _photobooks_drama: { name: @_photobooks_drama.name } }
    assert_redirected_to _photobooks_drama_url(@_photobooks_drama)
  end

  test "should destroy _photobooks_drama" do
    assert_difference("PhotobooksDrama.count", -1) do
      delete _photobooks_drama_url(@_photobooks_drama)
    end

    assert_redirected_to _photobooks_dramas_url
  end
end
