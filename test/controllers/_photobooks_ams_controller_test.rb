require "test_helper"

class PhotobooksAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_am = _photobooks_ams(:one)
  end

  test "should get index" do
    get _photobooks_ams_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_am_url
    assert_response :success
  end

  test "should create _photobooks_am" do
    assert_difference("PhotobooksAm.count") do
      post _photobooks_ams_url, params: { _photobooks_am: { name: @_photobooks_am.name } }
    end

    assert_redirected_to _photobooks_am_url(PhotobooksAm.last)
  end

  test "should show _photobooks_am" do
    get _photobooks_am_url(@_photobooks_am)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_am_url(@_photobooks_am)
    assert_response :success
  end

  test "should update _photobooks_am" do
    patch _photobooks_am_url(@_photobooks_am), params: { _photobooks_am: { name: @_photobooks_am.name } }
    assert_redirected_to _photobooks_am_url(@_photobooks_am)
  end

  test "should destroy _photobooks_am" do
    assert_difference("PhotobooksAm.count", -1) do
      delete _photobooks_am_url(@_photobooks_am)
    end

    assert_redirected_to _photobooks_ams_url
  end
end
