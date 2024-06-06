require "test_helper"

class LightNovelsMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_manga = _light_novels_mangas(:one)
  end

  test "should get index" do
    get _light_novels_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_manga_url
    assert_response :success
  end

  test "should create _light_novels_manga" do
    assert_difference("LightNovelsManga.count") do
      post _light_novels_mangas_url, params: { _light_novels_manga: { name: @_light_novels_manga.name } }
    end

    assert_redirected_to _light_novels_manga_url(LightNovelsManga.last)
  end

  test "should show _light_novels_manga" do
    get _light_novels_manga_url(@_light_novels_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_manga_url(@_light_novels_manga)
    assert_response :success
  end

  test "should update _light_novels_manga" do
    patch _light_novels_manga_url(@_light_novels_manga), params: { _light_novels_manga: { name: @_light_novels_manga.name } }
    assert_redirected_to _light_novels_manga_url(@_light_novels_manga)
  end

  test "should destroy _light_novels_manga" do
    assert_difference("LightNovelsManga.count", -1) do
      delete _light_novels_manga_url(@_light_novels_manga)
    end

    assert_redirected_to _light_novels_mangas_url
  end
end
