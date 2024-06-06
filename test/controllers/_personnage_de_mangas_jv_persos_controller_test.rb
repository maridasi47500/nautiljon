require "test_helper"

class PersonnageDeMangasJvPersosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_de_mangas_jv_perso = _personnage_de_mangas_jv_persos(:one)
  end

  test "should get index" do
    get _personnage_de_mangas_jv_persos_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_de_mangas_jv_perso_url
    assert_response :success
  end

  test "should create _personnage_de_mangas_jv_perso" do
    assert_difference("PersonnageDeMangasJvPerso.count") do
      post _personnage_de_mangas_jv_persos_url, params: { _personnage_de_mangas_jv_perso: { name: @_personnage_de_mangas_jv_perso.name } }
    end

    assert_redirected_to _personnage_de_mangas_jv_perso_url(PersonnageDeMangasJvPerso.last)
  end

  test "should show _personnage_de_mangas_jv_perso" do
    get _personnage_de_mangas_jv_perso_url(@_personnage_de_mangas_jv_perso)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_de_mangas_jv_perso_url(@_personnage_de_mangas_jv_perso)
    assert_response :success
  end

  test "should update _personnage_de_mangas_jv_perso" do
    patch _personnage_de_mangas_jv_perso_url(@_personnage_de_mangas_jv_perso), params: { _personnage_de_mangas_jv_perso: { name: @_personnage_de_mangas_jv_perso.name } }
    assert_redirected_to _personnage_de_mangas_jv_perso_url(@_personnage_de_mangas_jv_perso)
  end

  test "should destroy _personnage_de_mangas_jv_perso" do
    assert_difference("PersonnageDeMangasJvPerso.count", -1) do
      delete _personnage_de_mangas_jv_perso_url(@_personnage_de_mangas_jv_perso)
    end

    assert_redirected_to _personnage_de_mangas_jv_persos_url
  end
end
