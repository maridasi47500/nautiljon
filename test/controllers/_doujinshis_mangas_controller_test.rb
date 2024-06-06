require "test_helper"

class DoujinshisMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_manga = _doujinshis_mangas(:one)
  end

  test "should get index" do
    get _doujinshis_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_manga_url
    assert_response :success
  end

  test "should create _doujinshis_manga" do
    assert_difference("DoujinshisManga.count") do
      post _doujinshis_mangas_url, params: { _doujinshis_manga: { name: @_doujinshis_manga.name } }
    end

    assert_redirected_to _doujinshis_manga_url(DoujinshisManga.last)
  end

  test "should show _doujinshis_manga" do
    get _doujinshis_manga_url(@_doujinshis_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_manga_url(@_doujinshis_manga)
    assert_response :success
  end

  test "should update _doujinshis_manga" do
    patch _doujinshis_manga_url(@_doujinshis_manga), params: { _doujinshis_manga: { name: @_doujinshis_manga.name } }
    assert_redirected_to _doujinshis_manga_url(@_doujinshis_manga)
  end

  test "should destroy _doujinshis_manga" do
    assert_difference("DoujinshisManga.count", -1) do
      delete _doujinshis_manga_url(@_doujinshis_manga)
    end

    assert_redirected_to _doujinshis_mangas_url
  end
end
