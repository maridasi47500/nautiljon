require "test_helper"

class BrevesMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_manga = _breves_mangas(:one)
  end

  test "should get index" do
    get _breves_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_manga_url
    assert_response :success
  end

  test "should create _breves_manga" do
    assert_difference("BrevesManga.count") do
      post _breves_mangas_url, params: { _breves_manga: { name: @_breves_manga.name } }
    end

    assert_redirected_to _breves_manga_url(BrevesManga.last)
  end

  test "should show _breves_manga" do
    get _breves_manga_url(@_breves_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_manga_url(@_breves_manga)
    assert_response :success
  end

  test "should update _breves_manga" do
    patch _breves_manga_url(@_breves_manga), params: { _breves_manga: { name: @_breves_manga.name } }
    assert_redirected_to _breves_manga_url(@_breves_manga)
  end

  test "should destroy _breves_manga" do
    assert_difference("BrevesManga.count", -1) do
      delete _breves_manga_url(@_breves_manga)
    end

    assert_redirected_to _breves_mangas_url
  end
end
