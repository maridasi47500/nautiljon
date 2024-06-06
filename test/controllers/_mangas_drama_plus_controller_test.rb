require "test_helper"

class MangasDramaPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_drama_plu = _mangas_drama_plus(:one)
  end

  test "should get index" do
    get _mangas_drama_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_drama_plu_url
    assert_response :success
  end

  test "should create _mangas_drama_plu" do
    assert_difference("MangasDramaPlu.count") do
      post _mangas_drama_plus_url, params: { _mangas_drama_plu: { name: @_mangas_drama_plu.name } }
    end

    assert_redirected_to _mangas_drama_plu_url(MangasDramaPlu.last)
  end

  test "should show _mangas_drama_plu" do
    get _mangas_drama_plu_url(@_mangas_drama_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_drama_plu_url(@_mangas_drama_plu)
    assert_response :success
  end

  test "should update _mangas_drama_plu" do
    patch _mangas_drama_plu_url(@_mangas_drama_plu), params: { _mangas_drama_plu: { name: @_mangas_drama_plu.name } }
    assert_redirected_to _mangas_drama_plu_url(@_mangas_drama_plu)
  end

  test "should destroy _mangas_drama_plu" do
    assert_difference("MangasDramaPlu.count", -1) do
      delete _mangas_drama_plu_url(@_mangas_drama_plu)
    end

    assert_redirected_to _mangas_drama_plus_url
  end
end
