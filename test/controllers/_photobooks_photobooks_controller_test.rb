require "test_helper"

class PhotobooksPhotobooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_photobook = _photobooks_photobooks(:one)
  end

  test "should get index" do
    get _photobooks_photobooks_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_photobook_url
    assert_response :success
  end

  test "should create _photobooks_photobook" do
    assert_difference("PhotobooksPhotobook.count") do
      post _photobooks_photobooks_url, params: { _photobooks_photobook: { name: @_photobooks_photobook.name } }
    end

    assert_redirected_to _photobooks_photobook_url(PhotobooksPhotobook.last)
  end

  test "should show _photobooks_photobook" do
    get _photobooks_photobook_url(@_photobooks_photobook)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_photobook_url(@_photobooks_photobook)
    assert_response :success
  end

  test "should update _photobooks_photobook" do
    patch _photobooks_photobook_url(@_photobooks_photobook), params: { _photobooks_photobook: { name: @_photobooks_photobook.name } }
    assert_redirected_to _photobooks_photobook_url(@_photobooks_photobook)
  end

  test "should destroy _photobooks_photobook" do
    assert_difference("PhotobooksPhotobook.count", -1) do
      delete _photobooks_photobook_url(@_photobooks_photobook)
    end

    assert_redirected_to _photobooks_photobooks_url
  end
end
