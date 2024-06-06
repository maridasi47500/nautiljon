require "test_helper"

class PersonnageDanimesPersoMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_danimes_perso_manga = _personnage_danimes_perso_mangas(:one)
  end

  test "should get index" do
    get _personnage_danimes_perso_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_danimes_perso_manga_url
    assert_response :success
  end

  test "should create _personnage_danimes_perso_manga" do
    assert_difference("PersonnageDanimesPersoManga.count") do
      post _personnage_danimes_perso_mangas_url, params: { _personnage_danimes_perso_manga: { name: @_personnage_danimes_perso_manga.name } }
    end

    assert_redirected_to _personnage_danimes_perso_manga_url(PersonnageDanimesPersoManga.last)
  end

  test "should show _personnage_danimes_perso_manga" do
    get _personnage_danimes_perso_manga_url(@_personnage_danimes_perso_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_danimes_perso_manga_url(@_personnage_danimes_perso_manga)
    assert_response :success
  end

  test "should update _personnage_danimes_perso_manga" do
    patch _personnage_danimes_perso_manga_url(@_personnage_danimes_perso_manga), params: { _personnage_danimes_perso_manga: { name: @_personnage_danimes_perso_manga.name } }
    assert_redirected_to _personnage_danimes_perso_manga_url(@_personnage_danimes_perso_manga)
  end

  test "should destroy _personnage_danimes_perso_manga" do
    assert_difference("PersonnageDanimesPersoManga.count", -1) do
      delete _personnage_danimes_perso_manga_url(@_personnage_danimes_perso_manga)
    end

    assert_redirected_to _personnage_danimes_perso_mangas_url
  end
end
