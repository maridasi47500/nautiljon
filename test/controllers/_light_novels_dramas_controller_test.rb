require "test_helper"

class LightNovelsDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_drama = _light_novels_dramas(:one)
  end

  test "should get index" do
    get _light_novels_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_drama_url
    assert_response :success
  end

  test "should create _light_novels_drama" do
    assert_difference("LightNovelsDrama.count") do
      post _light_novels_dramas_url, params: { _light_novels_drama: { name: @_light_novels_drama.name } }
    end

    assert_redirected_to _light_novels_drama_url(LightNovelsDrama.last)
  end

  test "should show _light_novels_drama" do
    get _light_novels_drama_url(@_light_novels_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_drama_url(@_light_novels_drama)
    assert_response :success
  end

  test "should update _light_novels_drama" do
    patch _light_novels_drama_url(@_light_novels_drama), params: { _light_novels_drama: { name: @_light_novels_drama.name } }
    assert_redirected_to _light_novels_drama_url(@_light_novels_drama)
  end

  test "should destroy _light_novels_drama" do
    assert_difference("LightNovelsDrama.count", -1) do
      delete _light_novels_drama_url(@_light_novels_drama)
    end

    assert_redirected_to _light_novels_dramas_url
  end
end
