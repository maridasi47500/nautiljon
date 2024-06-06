require "test_helper"

class PhotobooksIllustrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_illustration = _photobooks_illustrations(:one)
  end

  test "should get index" do
    get _photobooks_illustrations_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_illustration_url
    assert_response :success
  end

  test "should create _photobooks_illustration" do
    assert_difference("PhotobooksIllustration.count") do
      post _photobooks_illustrations_url, params: { _photobooks_illustration: { name: @_photobooks_illustration.name } }
    end

    assert_redirected_to _photobooks_illustration_url(PhotobooksIllustration.last)
  end

  test "should show _photobooks_illustration" do
    get _photobooks_illustration_url(@_photobooks_illustration)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_illustration_url(@_photobooks_illustration)
    assert_response :success
  end

  test "should update _photobooks_illustration" do
    patch _photobooks_illustration_url(@_photobooks_illustration), params: { _photobooks_illustration: { name: @_photobooks_illustration.name } }
    assert_redirected_to _photobooks_illustration_url(@_photobooks_illustration)
  end

  test "should destroy _photobooks_illustration" do
    assert_difference("PhotobooksIllustration.count", -1) do
      delete _photobooks_illustration_url(@_photobooks_illustration)
    end

    assert_redirected_to _photobooks_illustrations_url
  end
end
