require "test_helper"

class GoodiesMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_manga = _goodies_mangas(:one)
  end

  test "should get index" do
    get _goodies_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_manga_url
    assert_response :success
  end

  test "should create _goodies_manga" do
    assert_difference("GoodiesManga.count") do
      post _goodies_mangas_url, params: { _goodies_manga: { name: @_goodies_manga.name } }
    end

    assert_redirected_to _goodies_manga_url(GoodiesManga.last)
  end

  test "should show _goodies_manga" do
    get _goodies_manga_url(@_goodies_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_manga_url(@_goodies_manga)
    assert_response :success
  end

  test "should update _goodies_manga" do
    patch _goodies_manga_url(@_goodies_manga), params: { _goodies_manga: { name: @_goodies_manga.name } }
    assert_redirected_to _goodies_manga_url(@_goodies_manga)
  end

  test "should destroy _goodies_manga" do
    assert_difference("GoodiesManga.count", -1) do
      delete _goodies_manga_url(@_goodies_manga)
    end

    assert_redirected_to _goodies_mangas_url
  end
end
