require "test_helper"

class MangasPrepubliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_prepubly = _mangas_prepublies(:one)
  end

  test "should get index" do
    get _mangas_prepublies_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_prepubly_url
    assert_response :success
  end

  test "should create _mangas_prepubly" do
    assert_difference("MangasPrepublie.count") do
      post _mangas_prepublies_url, params: { _mangas_prepubly: { name: @_mangas_prepubly.name } }
    end

    assert_redirected_to _mangas_prepubly_url(MangasPrepublie.last)
  end

  test "should show _mangas_prepubly" do
    get _mangas_prepubly_url(@_mangas_prepubly)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_prepubly_url(@_mangas_prepubly)
    assert_response :success
  end

  test "should update _mangas_prepubly" do
    patch _mangas_prepubly_url(@_mangas_prepubly), params: { _mangas_prepubly: { name: @_mangas_prepubly.name } }
    assert_redirected_to _mangas_prepubly_url(@_mangas_prepubly)
  end

  test "should destroy _mangas_prepubly" do
    assert_difference("MangasPrepublie.count", -1) do
      delete _mangas_prepubly_url(@_mangas_prepubly)
    end

    assert_redirected_to _mangas_prepublies_url
  end
end
