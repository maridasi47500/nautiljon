require "test_helper"

class PhotobooksGoodiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_goody = _photobooks_goodies(:one)
  end

  test "should get index" do
    get _photobooks_goodies_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_goody_url
    assert_response :success
  end

  test "should create _photobooks_goody" do
    assert_difference("PhotobooksGoody.count") do
      post _photobooks_goodies_url, params: { _photobooks_goody: { name: @_photobooks_goody.name } }
    end

    assert_redirected_to _photobooks_goody_url(PhotobooksGoody.last)
  end

  test "should show _photobooks_goody" do
    get _photobooks_goody_url(@_photobooks_goody)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_goody_url(@_photobooks_goody)
    assert_response :success
  end

  test "should update _photobooks_goody" do
    patch _photobooks_goody_url(@_photobooks_goody), params: { _photobooks_goody: { name: @_photobooks_goody.name } }
    assert_redirected_to _photobooks_goody_url(@_photobooks_goody)
  end

  test "should destroy _photobooks_goody" do
    assert_difference("PhotobooksGoody.count", -1) do
      delete _photobooks_goody_url(@_photobooks_goody)
    end

    assert_redirected_to _photobooks_goodies_url
  end
end
