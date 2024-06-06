require "test_helper"

class PersonnagesDeJeuxVideosPersoMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnages_de_jeux_videos_perso_manga = _personnages_de_jeux_videos_perso_mangas(:one)
  end

  test "should get index" do
    get _personnages_de_jeux_videos_perso_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__personnages_de_jeux_videos_perso_manga_url
    assert_response :success
  end

  test "should create _personnages_de_jeux_videos_perso_manga" do
    assert_difference("PersonnagesDeJeuxVideosPersoManga.count") do
      post _personnages_de_jeux_videos_perso_mangas_url, params: { _personnages_de_jeux_videos_perso_manga: { name: @_personnages_de_jeux_videos_perso_manga.name } }
    end

    assert_redirected_to _personnages_de_jeux_videos_perso_manga_url(PersonnagesDeJeuxVideosPersoManga.last)
  end

  test "should show _personnages_de_jeux_videos_perso_manga" do
    get _personnages_de_jeux_videos_perso_manga_url(@_personnages_de_jeux_videos_perso_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnages_de_jeux_videos_perso_manga_url(@_personnages_de_jeux_videos_perso_manga)
    assert_response :success
  end

  test "should update _personnages_de_jeux_videos_perso_manga" do
    patch _personnages_de_jeux_videos_perso_manga_url(@_personnages_de_jeux_videos_perso_manga), params: { _personnages_de_jeux_videos_perso_manga: { name: @_personnages_de_jeux_videos_perso_manga.name } }
    assert_redirected_to _personnages_de_jeux_videos_perso_manga_url(@_personnages_de_jeux_videos_perso_manga)
  end

  test "should destroy _personnages_de_jeux_videos_perso_manga" do
    assert_difference("PersonnagesDeJeuxVideosPersoManga.count", -1) do
      delete _personnages_de_jeux_videos_perso_manga_url(@_personnages_de_jeux_videos_perso_manga)
    end

    assert_redirected_to _personnages_de_jeux_videos_perso_mangas_url
  end
end
