require "test_helper"

class GeneriquesIdAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_generiques_id_anime = _generiques_id_animes(:one)
  end

  test "should get index" do
    get _generiques_id_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__generiques_id_anime_url
    assert_response :success
  end

  test "should create _generiques_id_anime" do
    assert_difference("GeneriquesIdAnime.count") do
      post _generiques_id_animes_url, params: { _generiques_id_anime: { name: @_generiques_id_anime.name } }
    end

    assert_redirected_to _generiques_id_anime_url(GeneriquesIdAnime.last)
  end

  test "should show _generiques_id_anime" do
    get _generiques_id_anime_url(@_generiques_id_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__generiques_id_anime_url(@_generiques_id_anime)
    assert_response :success
  end

  test "should update _generiques_id_anime" do
    patch _generiques_id_anime_url(@_generiques_id_anime), params: { _generiques_id_anime: { name: @_generiques_id_anime.name } }
    assert_redirected_to _generiques_id_anime_url(@_generiques_id_anime)
  end

  test "should destroy _generiques_id_anime" do
    assert_difference("GeneriquesIdAnime.count", -1) do
      delete _generiques_id_anime_url(@_generiques_id_anime)
    end

    assert_redirected_to _generiques_id_animes_url
  end
end
