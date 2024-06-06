require "test_helper"

class JeuxVideosMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_manga = _jeux_videos_mangas(:one)
  end

  test "should get index" do
    get _jeux_videos_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_manga_url
    assert_response :success
  end

  test "should create _jeux_videos_manga" do
    assert_difference("JeuxVideosManga.count") do
      post _jeux_videos_mangas_url, params: { _jeux_videos_manga: { name: @_jeux_videos_manga.name } }
    end

    assert_redirected_to _jeux_videos_manga_url(JeuxVideosManga.last)
  end

  test "should show _jeux_videos_manga" do
    get _jeux_videos_manga_url(@_jeux_videos_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_manga_url(@_jeux_videos_manga)
    assert_response :success
  end

  test "should update _jeux_videos_manga" do
    patch _jeux_videos_manga_url(@_jeux_videos_manga), params: { _jeux_videos_manga: { name: @_jeux_videos_manga.name } }
    assert_redirected_to _jeux_videos_manga_url(@_jeux_videos_manga)
  end

  test "should destroy _jeux_videos_manga" do
    assert_difference("JeuxVideosManga.count", -1) do
      delete _jeux_videos_manga_url(@_jeux_videos_manga)
    end

    assert_redirected_to _jeux_videos_mangas_url
  end
end
