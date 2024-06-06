require "test_helper"

class VolumesMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_volumes_manga = _volumes_mangas(:one)
  end

  test "should get index" do
    get _volumes_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__volumes_manga_url
    assert_response :success
  end

  test "should create _volumes_manga" do
    assert_difference("VolumesManga.count") do
      post _volumes_mangas_url, params: { _volumes_manga: { name: @_volumes_manga.name } }
    end

    assert_redirected_to _volumes_manga_url(VolumesManga.last)
  end

  test "should show _volumes_manga" do
    get _volumes_manga_url(@_volumes_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__volumes_manga_url(@_volumes_manga)
    assert_response :success
  end

  test "should update _volumes_manga" do
    patch _volumes_manga_url(@_volumes_manga), params: { _volumes_manga: { name: @_volumes_manga.name } }
    assert_redirected_to _volumes_manga_url(@_volumes_manga)
  end

  test "should destroy _volumes_manga" do
    assert_difference("VolumesManga.count", -1) do
      delete _volumes_manga_url(@_volumes_manga)
    end

    assert_redirected_to _volumes_mangas_url
  end
end
