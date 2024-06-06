require "test_helper"

class MangasCulturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_culture = _mangas_cultures(:one)
  end

  test "should get index" do
    get _mangas_cultures_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_culture_url
    assert_response :success
  end

  test "should create _mangas_culture" do
    assert_difference("MangasCulture.count") do
      post _mangas_cultures_url, params: { _mangas_culture: { name: @_mangas_culture.name } }
    end

    assert_redirected_to _mangas_culture_url(MangasCulture.last)
  end

  test "should show _mangas_culture" do
    get _mangas_culture_url(@_mangas_culture)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_culture_url(@_mangas_culture)
    assert_response :success
  end

  test "should update _mangas_culture" do
    patch _mangas_culture_url(@_mangas_culture), params: { _mangas_culture: { name: @_mangas_culture.name } }
    assert_redirected_to _mangas_culture_url(@_mangas_culture)
  end

  test "should destroy _mangas_culture" do
    assert_difference("MangasCulture.count", -1) do
      delete _mangas_culture_url(@_mangas_culture)
    end

    assert_redirected_to _mangas_cultures_url
  end
end
