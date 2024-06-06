require "test_helper"

class MangasMangaPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_manga_plu = _mangas_manga_plus(:one)
  end

  test "should get index" do
    get _mangas_manga_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_manga_plu_url
    assert_response :success
  end

  test "should create _mangas_manga_plu" do
    assert_difference("MangasMangaPlu.count") do
      post _mangas_manga_plus_url, params: { _mangas_manga_plu: { name: @_mangas_manga_plu.name } }
    end

    assert_redirected_to _mangas_manga_plu_url(MangasMangaPlu.last)
  end

  test "should show _mangas_manga_plu" do
    get _mangas_manga_plu_url(@_mangas_manga_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_manga_plu_url(@_mangas_manga_plu)
    assert_response :success
  end

  test "should update _mangas_manga_plu" do
    patch _mangas_manga_plu_url(@_mangas_manga_plu), params: { _mangas_manga_plu: { name: @_mangas_manga_plu.name } }
    assert_redirected_to _mangas_manga_plu_url(@_mangas_manga_plu)
  end

  test "should destroy _mangas_manga_plu" do
    assert_difference("MangasMangaPlu.count", -1) do
      delete _mangas_manga_plu_url(@_mangas_manga_plu)
    end

    assert_redirected_to _mangas_manga_plus_url
  end
end
