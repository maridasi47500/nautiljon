require "test_helper"

class PersonnageDeMangasPersoMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_de_mangas_perso_manga = _personnage_de_mangas_perso_mangas(:one)
  end

  test "should get index" do
    get _personnage_de_mangas_perso_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_de_mangas_perso_manga_url
    assert_response :success
  end

  test "should create _personnage_de_mangas_perso_manga" do
    assert_difference("PersonnageDeMangasPersoManga.count") do
      post _personnage_de_mangas_perso_mangas_url, params: { _personnage_de_mangas_perso_manga: { name: @_personnage_de_mangas_perso_manga.name } }
    end

    assert_redirected_to _personnage_de_mangas_perso_manga_url(PersonnageDeMangasPersoManga.last)
  end

  test "should show _personnage_de_mangas_perso_manga" do
    get _personnage_de_mangas_perso_manga_url(@_personnage_de_mangas_perso_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_de_mangas_perso_manga_url(@_personnage_de_mangas_perso_manga)
    assert_response :success
  end

  test "should update _personnage_de_mangas_perso_manga" do
    patch _personnage_de_mangas_perso_manga_url(@_personnage_de_mangas_perso_manga), params: { _personnage_de_mangas_perso_manga: { name: @_personnage_de_mangas_perso_manga.name } }
    assert_redirected_to _personnage_de_mangas_perso_manga_url(@_personnage_de_mangas_perso_manga)
  end

  test "should destroy _personnage_de_mangas_perso_manga" do
    assert_difference("PersonnageDeMangasPersoManga.count", -1) do
      delete _personnage_de_mangas_perso_manga_url(@_personnage_de_mangas_perso_manga)
    end

    assert_redirected_to _personnage_de_mangas_perso_mangas_url
  end
end
