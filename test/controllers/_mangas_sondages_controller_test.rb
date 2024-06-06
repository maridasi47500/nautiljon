require "test_helper"

class MangasSondagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_sondage = _mangas_sondages(:one)
  end

  test "should get index" do
    get _mangas_sondages_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_sondage_url
    assert_response :success
  end

  test "should create _mangas_sondage" do
    assert_difference("MangasSondage.count") do
      post _mangas_sondages_url, params: { _mangas_sondage: { name: @_mangas_sondage.name } }
    end

    assert_redirected_to _mangas_sondage_url(MangasSondage.last)
  end

  test "should show _mangas_sondage" do
    get _mangas_sondage_url(@_mangas_sondage)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_sondage_url(@_mangas_sondage)
    assert_response :success
  end

  test "should update _mangas_sondage" do
    patch _mangas_sondage_url(@_mangas_sondage), params: { _mangas_sondage: { name: @_mangas_sondage.name } }
    assert_redirected_to _mangas_sondage_url(@_mangas_sondage)
  end

  test "should destroy _mangas_sondage" do
    assert_difference("MangasSondage.count", -1) do
      delete _mangas_sondage_url(@_mangas_sondage)
    end

    assert_redirected_to _mangas_sondages_url
  end
end
