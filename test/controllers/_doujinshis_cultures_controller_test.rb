require "test_helper"

class DoujinshisCulturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_culture = _doujinshis_cultures(:one)
  end

  test "should get index" do
    get _doujinshis_cultures_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_culture_url
    assert_response :success
  end

  test "should create _doujinshis_culture" do
    assert_difference("DoujinshisCulture.count") do
      post _doujinshis_cultures_url, params: { _doujinshis_culture: { name: @_doujinshis_culture.name } }
    end

    assert_redirected_to _doujinshis_culture_url(DoujinshisCulture.last)
  end

  test "should show _doujinshis_culture" do
    get _doujinshis_culture_url(@_doujinshis_culture)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_culture_url(@_doujinshis_culture)
    assert_response :success
  end

  test "should update _doujinshis_culture" do
    patch _doujinshis_culture_url(@_doujinshis_culture), params: { _doujinshis_culture: { name: @_doujinshis_culture.name } }
    assert_redirected_to _doujinshis_culture_url(@_doujinshis_culture)
  end

  test "should destroy _doujinshis_culture" do
    assert_difference("DoujinshisCulture.count", -1) do
      delete _doujinshis_culture_url(@_doujinshis_culture)
    end

    assert_redirected_to _doujinshis_cultures_url
  end
end
