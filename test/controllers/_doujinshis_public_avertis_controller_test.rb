require "test_helper"

class DoujinshisPublicAvertisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_public_averti = _doujinshis_public_avertis(:one)
  end

  test "should get index" do
    get _doujinshis_public_avertis_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_public_averti_url
    assert_response :success
  end

  test "should create _doujinshis_public_averti" do
    assert_difference("DoujinshisPublicAverti.count") do
      post _doujinshis_public_avertis_url, params: { _doujinshis_public_averti: { name: @_doujinshis_public_averti.name } }
    end

    assert_redirected_to _doujinshis_public_averti_url(DoujinshisPublicAverti.last)
  end

  test "should show _doujinshis_public_averti" do
    get _doujinshis_public_averti_url(@_doujinshis_public_averti)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_public_averti_url(@_doujinshis_public_averti)
    assert_response :success
  end

  test "should update _doujinshis_public_averti" do
    patch _doujinshis_public_averti_url(@_doujinshis_public_averti), params: { _doujinshis_public_averti: { name: @_doujinshis_public_averti.name } }
    assert_redirected_to _doujinshis_public_averti_url(@_doujinshis_public_averti)
  end

  test "should destroy _doujinshis_public_averti" do
    assert_difference("DoujinshisPublicAverti.count", -1) do
      delete _doujinshis_public_averti_url(@_doujinshis_public_averti)
    end

    assert_redirected_to _doujinshis_public_avertis_url
  end
end
