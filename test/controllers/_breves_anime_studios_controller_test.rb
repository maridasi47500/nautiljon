require "test_helper"

class BrevesAnimeStudiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_anime_studio = _breves_anime_studios(:one)
  end

  test "should get index" do
    get _breves_anime_studios_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_anime_studio_url
    assert_response :success
  end

  test "should create _breves_anime_studio" do
    assert_difference("BrevesAnimeStudio.count") do
      post _breves_anime_studios_url, params: { _breves_anime_studio: { name: @_breves_anime_studio.name } }
    end

    assert_redirected_to _breves_anime_studio_url(BrevesAnimeStudio.last)
  end

  test "should show _breves_anime_studio" do
    get _breves_anime_studio_url(@_breves_anime_studio)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_anime_studio_url(@_breves_anime_studio)
    assert_response :success
  end

  test "should update _breves_anime_studio" do
    patch _breves_anime_studio_url(@_breves_anime_studio), params: { _breves_anime_studio: { name: @_breves_anime_studio.name } }
    assert_redirected_to _breves_anime_studio_url(@_breves_anime_studio)
  end

  test "should destroy _breves_anime_studio" do
    assert_difference("BrevesAnimeStudio.count", -1) do
      delete _breves_anime_studio_url(@_breves_anime_studio)
    end

    assert_redirected_to _breves_anime_studios_url
  end
end
