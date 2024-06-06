require "test_helper"

class LightNovelsActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_actualite = _light_novels_actualites(:one)
  end

  test "should get index" do
    get _light_novels_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_actualite_url
    assert_response :success
  end

  test "should create _light_novels_actualite" do
    assert_difference("LightNovelsActualite.count") do
      post _light_novels_actualites_url, params: { _light_novels_actualite: { name: @_light_novels_actualite.name } }
    end

    assert_redirected_to _light_novels_actualite_url(LightNovelsActualite.last)
  end

  test "should show _light_novels_actualite" do
    get _light_novels_actualite_url(@_light_novels_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_actualite_url(@_light_novels_actualite)
    assert_response :success
  end

  test "should update _light_novels_actualite" do
    patch _light_novels_actualite_url(@_light_novels_actualite), params: { _light_novels_actualite: { name: @_light_novels_actualite.name } }
    assert_redirected_to _light_novels_actualite_url(@_light_novels_actualite)
  end

  test "should destroy _light_novels_actualite" do
    assert_difference("LightNovelsActualite.count", -1) do
      delete _light_novels_actualite_url(@_light_novels_actualite)
    end

    assert_redirected_to _light_novels_actualites_url
  end
end
