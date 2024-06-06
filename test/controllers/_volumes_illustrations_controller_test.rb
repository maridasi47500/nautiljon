require "test_helper"

class VolumesIllustrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_volumes_illustration = _volumes_illustrations(:one)
  end

  test "should get index" do
    get _volumes_illustrations_url
    assert_response :success
  end

  test "should get new" do
    get new__volumes_illustration_url
    assert_response :success
  end

  test "should create _volumes_illustration" do
    assert_difference("VolumesIllustration.count") do
      post _volumes_illustrations_url, params: { _volumes_illustration: { name: @_volumes_illustration.name } }
    end

    assert_redirected_to _volumes_illustration_url(VolumesIllustration.last)
  end

  test "should show _volumes_illustration" do
    get _volumes_illustration_url(@_volumes_illustration)
    assert_response :success
  end

  test "should get edit" do
    get edit__volumes_illustration_url(@_volumes_illustration)
    assert_response :success
  end

  test "should update _volumes_illustration" do
    patch _volumes_illustration_url(@_volumes_illustration), params: { _volumes_illustration: { name: @_volumes_illustration.name } }
    assert_redirected_to _volumes_illustration_url(@_volumes_illustration)
  end

  test "should destroy _volumes_illustration" do
    assert_difference("VolumesIllustration.count", -1) do
      delete _volumes_illustration_url(@_volumes_illustration)
    end

    assert_redirected_to _volumes_illustrations_url
  end
end
