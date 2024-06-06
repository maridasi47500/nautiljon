require "test_helper"

class CdsMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_manga = _cds_mangas(:one)
  end

  test "should get index" do
    get _cds_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_manga_url
    assert_response :success
  end

  test "should create _cds_manga" do
    assert_difference("CdsManga.count") do
      post _cds_mangas_url, params: { _cds_manga: { name: @_cds_manga.name } }
    end

    assert_redirected_to _cds_manga_url(CdsManga.last)
  end

  test "should show _cds_manga" do
    get _cds_manga_url(@_cds_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_manga_url(@_cds_manga)
    assert_response :success
  end

  test "should update _cds_manga" do
    patch _cds_manga_url(@_cds_manga), params: { _cds_manga: { name: @_cds_manga.name } }
    assert_redirected_to _cds_manga_url(@_cds_manga)
  end

  test "should destroy _cds_manga" do
    assert_difference("CdsManga.count", -1) do
      delete _cds_manga_url(@_cds_manga)
    end

    assert_redirected_to _cds_mangas_url
  end
end
