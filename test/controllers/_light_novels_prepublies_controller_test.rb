require "test_helper"

class LightNovelsPrepubliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_prepubly = _light_novels_prepublies(:one)
  end

  test "should get index" do
    get _light_novels_prepublies_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_prepubly_url
    assert_response :success
  end

  test "should create _light_novels_prepubly" do
    assert_difference("LightNovelsPrepublie.count") do
      post _light_novels_prepublies_url, params: { _light_novels_prepubly: { name: @_light_novels_prepubly.name } }
    end

    assert_redirected_to _light_novels_prepubly_url(LightNovelsPrepublie.last)
  end

  test "should show _light_novels_prepubly" do
    get _light_novels_prepubly_url(@_light_novels_prepubly)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_prepubly_url(@_light_novels_prepubly)
    assert_response :success
  end

  test "should update _light_novels_prepubly" do
    patch _light_novels_prepubly_url(@_light_novels_prepubly), params: { _light_novels_prepubly: { name: @_light_novels_prepubly.name } }
    assert_redirected_to _light_novels_prepubly_url(@_light_novels_prepubly)
  end

  test "should destroy _light_novels_prepubly" do
    assert_difference("LightNovelsPrepublie.count", -1) do
      delete _light_novels_prepubly_url(@_light_novels_prepubly)
    end

    assert_redirected_to _light_novels_prepublies_url
  end
end
