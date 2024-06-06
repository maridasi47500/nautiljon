require "test_helper"

class MangasDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_drama = _mangas_dramas(:one)
  end

  test "should get index" do
    get _mangas_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_drama_url
    assert_response :success
  end

  test "should create _mangas_drama" do
    assert_difference("MangasDrama.count") do
      post _mangas_dramas_url, params: { _mangas_drama: { name: @_mangas_drama.name } }
    end

    assert_redirected_to _mangas_drama_url(MangasDrama.last)
  end

  test "should show _mangas_drama" do
    get _mangas_drama_url(@_mangas_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_drama_url(@_mangas_drama)
    assert_response :success
  end

  test "should update _mangas_drama" do
    patch _mangas_drama_url(@_mangas_drama), params: { _mangas_drama: { name: @_mangas_drama.name } }
    assert_redirected_to _mangas_drama_url(@_mangas_drama)
  end

  test "should destroy _mangas_drama" do
    assert_difference("MangasDrama.count", -1) do
      delete _mangas_drama_url(@_mangas_drama)
    end

    assert_redirected_to _mangas_dramas_url
  end
end
