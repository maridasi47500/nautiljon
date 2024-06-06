require "test_helper"

class PersonnageDanimesAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_danimes_anime = _personnage_danimes_animes(:one)
  end

  test "should get index" do
    get _personnage_danimes_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_danimes_anime_url
    assert_response :success
  end

  test "should create _personnage_danimes_anime" do
    assert_difference("PersonnageDanimesAnime.count") do
      post _personnage_danimes_animes_url, params: { _personnage_danimes_anime: { name: @_personnage_danimes_anime.name } }
    end

    assert_redirected_to _personnage_danimes_anime_url(PersonnageDanimesAnime.last)
  end

  test "should show _personnage_danimes_anime" do
    get _personnage_danimes_anime_url(@_personnage_danimes_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_danimes_anime_url(@_personnage_danimes_anime)
    assert_response :success
  end

  test "should update _personnage_danimes_anime" do
    patch _personnage_danimes_anime_url(@_personnage_danimes_anime), params: { _personnage_danimes_anime: { name: @_personnage_danimes_anime.name } }
    assert_redirected_to _personnage_danimes_anime_url(@_personnage_danimes_anime)
  end

  test "should destroy _personnage_danimes_anime" do
    assert_difference("PersonnageDanimesAnime.count", -1) do
      delete _personnage_danimes_anime_url(@_personnage_danimes_anime)
    end

    assert_redirected_to _personnage_danimes_animes_url
  end
end
