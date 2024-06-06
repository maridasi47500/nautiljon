require "test_helper"

class GoodiesPublicAvertisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_public_averti = _goodies_public_avertis(:one)
  end

  test "should get index" do
    get _goodies_public_avertis_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_public_averti_url
    assert_response :success
  end

  test "should create _goodies_public_averti" do
    assert_difference("GoodiesPublicAverti.count") do
      post _goodies_public_avertis_url, params: { _goodies_public_averti: { name: @_goodies_public_averti.name } }
    end

    assert_redirected_to _goodies_public_averti_url(GoodiesPublicAverti.last)
  end

  test "should show _goodies_public_averti" do
    get _goodies_public_averti_url(@_goodies_public_averti)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_public_averti_url(@_goodies_public_averti)
    assert_response :success
  end

  test "should update _goodies_public_averti" do
    patch _goodies_public_averti_url(@_goodies_public_averti), params: { _goodies_public_averti: { name: @_goodies_public_averti.name } }
    assert_redirected_to _goodies_public_averti_url(@_goodies_public_averti)
  end

  test "should destroy _goodies_public_averti" do
    assert_difference("GoodiesPublicAverti.count", -1) do
      delete _goodies_public_averti_url(@_goodies_public_averti)
    end

    assert_redirected_to _goodies_public_avertis_url
  end
end
