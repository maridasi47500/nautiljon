require "test_helper"

class PersonnageDeMangasPersoPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_de_mangas_perso_plu = _personnage_de_mangas_perso_plus(:one)
  end

  test "should get index" do
    get _personnage_de_mangas_perso_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_de_mangas_perso_plu_url
    assert_response :success
  end

  test "should create _personnage_de_mangas_perso_plu" do
    assert_difference("PersonnageDeMangasPersoPlu.count") do
      post _personnage_de_mangas_perso_plus_url, params: { _personnage_de_mangas_perso_plu: { name: @_personnage_de_mangas_perso_plu.name } }
    end

    assert_redirected_to _personnage_de_mangas_perso_plu_url(PersonnageDeMangasPersoPlu.last)
  end

  test "should show _personnage_de_mangas_perso_plu" do
    get _personnage_de_mangas_perso_plu_url(@_personnage_de_mangas_perso_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_de_mangas_perso_plu_url(@_personnage_de_mangas_perso_plu)
    assert_response :success
  end

  test "should update _personnage_de_mangas_perso_plu" do
    patch _personnage_de_mangas_perso_plu_url(@_personnage_de_mangas_perso_plu), params: { _personnage_de_mangas_perso_plu: { name: @_personnage_de_mangas_perso_plu.name } }
    assert_redirected_to _personnage_de_mangas_perso_plu_url(@_personnage_de_mangas_perso_plu)
  end

  test "should destroy _personnage_de_mangas_perso_plu" do
    assert_difference("PersonnageDeMangasPersoPlu.count", -1) do
      delete _personnage_de_mangas_perso_plu_url(@_personnage_de_mangas_perso_plu)
    end

    assert_redirected_to _personnage_de_mangas_perso_plus_url
  end
end
