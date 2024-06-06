require "test_helper"

class LightNovelsActualiteMinisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_actualite_mini = _light_novels_actualite_minis(:one)
  end

  test "should get index" do
    get _light_novels_actualite_minis_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_actualite_mini_url
    assert_response :success
  end

  test "should create _light_novels_actualite_mini" do
    assert_difference("LightNovelsActualiteMini.count") do
      post _light_novels_actualite_minis_url, params: { _light_novels_actualite_mini: { name: @_light_novels_actualite_mini.name } }
    end

    assert_redirected_to _light_novels_actualite_mini_url(LightNovelsActualiteMini.last)
  end

  test "should show _light_novels_actualite_mini" do
    get _light_novels_actualite_mini_url(@_light_novels_actualite_mini)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_actualite_mini_url(@_light_novels_actualite_mini)
    assert_response :success
  end

  test "should update _light_novels_actualite_mini" do
    patch _light_novels_actualite_mini_url(@_light_novels_actualite_mini), params: { _light_novels_actualite_mini: { name: @_light_novels_actualite_mini.name } }
    assert_redirected_to _light_novels_actualite_mini_url(@_light_novels_actualite_mini)
  end

  test "should destroy _light_novels_actualite_mini" do
    assert_difference("LightNovelsActualiteMini.count", -1) do
      delete _light_novels_actualite_mini_url(@_light_novels_actualite_mini)
    end

    assert_redirected_to _light_novels_actualite_minis_url
  end
end
