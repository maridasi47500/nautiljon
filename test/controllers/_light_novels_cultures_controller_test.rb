require "test_helper"

class LightNovelsCulturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_culture = _light_novels_cultures(:one)
  end

  test "should get index" do
    get _light_novels_cultures_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_culture_url
    assert_response :success
  end

  test "should create _light_novels_culture" do
    assert_difference("LightNovelsCulture.count") do
      post _light_novels_cultures_url, params: { _light_novels_culture: { name: @_light_novels_culture.name } }
    end

    assert_redirected_to _light_novels_culture_url(LightNovelsCulture.last)
  end

  test "should show _light_novels_culture" do
    get _light_novels_culture_url(@_light_novels_culture)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_culture_url(@_light_novels_culture)
    assert_response :success
  end

  test "should update _light_novels_culture" do
    patch _light_novels_culture_url(@_light_novels_culture), params: { _light_novels_culture: { name: @_light_novels_culture.name } }
    assert_redirected_to _light_novels_culture_url(@_light_novels_culture)
  end

  test "should destroy _light_novels_culture" do
    assert_difference("LightNovelsCulture.count", -1) do
      delete _light_novels_culture_url(@_light_novels_culture)
    end

    assert_redirected_to _light_novels_cultures_url
  end
end
