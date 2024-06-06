require "test_helper"

class DramasMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_manga = _dramas_mangas(:one)
  end

  test "should get index" do
    get _dramas_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_manga_url
    assert_response :success
  end

  test "should create _dramas_manga" do
    assert_difference("DramasManga.count") do
      post _dramas_mangas_url, params: { _dramas_manga: { name: @_dramas_manga.name } }
    end

    assert_redirected_to _dramas_manga_url(DramasManga.last)
  end

  test "should show _dramas_manga" do
    get _dramas_manga_url(@_dramas_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_manga_url(@_dramas_manga)
    assert_response :success
  end

  test "should update _dramas_manga" do
    patch _dramas_manga_url(@_dramas_manga), params: { _dramas_manga: { name: @_dramas_manga.name } }
    assert_redirected_to _dramas_manga_url(@_dramas_manga)
  end

  test "should destroy _dramas_manga" do
    assert_difference("DramasManga.count", -1) do
      delete _dramas_manga_url(@_dramas_manga)
    end

    assert_redirected_to _dramas_mangas_url
  end
end
