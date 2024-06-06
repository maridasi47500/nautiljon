require "test_helper"

class DoujinshisFrancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_france = _doujinshis_frances(:one)
  end

  test "should get index" do
    get _doujinshis_frances_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_france_url
    assert_response :success
  end

  test "should create _doujinshis_france" do
    assert_difference("DoujinshisFrance.count") do
      post _doujinshis_frances_url, params: { _doujinshis_france: { name: @_doujinshis_france.name } }
    end

    assert_redirected_to _doujinshis_france_url(DoujinshisFrance.last)
  end

  test "should show _doujinshis_france" do
    get _doujinshis_france_url(@_doujinshis_france)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_france_url(@_doujinshis_france)
    assert_response :success
  end

  test "should update _doujinshis_france" do
    patch _doujinshis_france_url(@_doujinshis_france), params: { _doujinshis_france: { name: @_doujinshis_france.name } }
    assert_redirected_to _doujinshis_france_url(@_doujinshis_france)
  end

  test "should destroy _doujinshis_france" do
    assert_difference("DoujinshisFrance.count", -1) do
      delete _doujinshis_france_url(@_doujinshis_france)
    end

    assert_redirected_to _doujinshis_frances_url
  end
end
