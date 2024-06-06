require "test_helper"

class MangasAnimePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_anime_plu = _mangas_anime_plus(:one)
  end

  test "should get index" do
    get _mangas_anime_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_anime_plu_url
    assert_response :success
  end

  test "should create _mangas_anime_plu" do
    assert_difference("MangasAnimePlu.count") do
      post _mangas_anime_plus_url, params: { _mangas_anime_plu: { name: @_mangas_anime_plu.name } }
    end

    assert_redirected_to _mangas_anime_plu_url(MangasAnimePlu.last)
  end

  test "should show _mangas_anime_plu" do
    get _mangas_anime_plu_url(@_mangas_anime_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_anime_plu_url(@_mangas_anime_plu)
    assert_response :success
  end

  test "should update _mangas_anime_plu" do
    patch _mangas_anime_plu_url(@_mangas_anime_plu), params: { _mangas_anime_plu: { name: @_mangas_anime_plu.name } }
    assert_redirected_to _mangas_anime_plu_url(@_mangas_anime_plu)
  end

  test "should destroy _mangas_anime_plu" do
    assert_difference("MangasAnimePlu.count", -1) do
      delete _mangas_anime_plu_url(@_mangas_anime_plu)
    end

    assert_redirected_to _mangas_anime_plus_url
  end
end
