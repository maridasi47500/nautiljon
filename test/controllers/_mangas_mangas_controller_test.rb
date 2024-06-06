require "test_helper"

class MangasMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_manga = _mangas_mangas(:one)
  end

  test "should get index" do
    get _mangas_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_manga_url
    assert_response :success
  end

  test "should create _mangas_manga" do
    assert_difference("MangasManga.count") do
      post _mangas_mangas_url, params: { _mangas_manga: { name: @_mangas_manga.name } }
    end

    assert_redirected_to _mangas_manga_url(MangasManga.last)
  end

  test "should show _mangas_manga" do
    get _mangas_manga_url(@_mangas_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_manga_url(@_mangas_manga)
    assert_response :success
  end

  test "should update _mangas_manga" do
    patch _mangas_manga_url(@_mangas_manga), params: { _mangas_manga: { name: @_mangas_manga.name } }
    assert_redirected_to _mangas_manga_url(@_mangas_manga)
  end

  test "should destroy _mangas_manga" do
    assert_difference("MangasManga.count", -1) do
      delete _mangas_manga_url(@_mangas_manga)
    end

    assert_redirected_to _mangas_mangas_url
  end
end
