require "test_helper"

class PersonnageDeMangasGoodiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_de_mangas_goody = _personnage_de_mangas_goodies(:one)
  end

  test "should get index" do
    get _personnage_de_mangas_goodies_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_de_mangas_goody_url
    assert_response :success
  end

  test "should create _personnage_de_mangas_goody" do
    assert_difference("PersonnageDeMangasGoody.count") do
      post _personnage_de_mangas_goodies_url, params: { _personnage_de_mangas_goody: { name: @_personnage_de_mangas_goody.name } }
    end

    assert_redirected_to _personnage_de_mangas_goody_url(PersonnageDeMangasGoody.last)
  end

  test "should show _personnage_de_mangas_goody" do
    get _personnage_de_mangas_goody_url(@_personnage_de_mangas_goody)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_de_mangas_goody_url(@_personnage_de_mangas_goody)
    assert_response :success
  end

  test "should update _personnage_de_mangas_goody" do
    patch _personnage_de_mangas_goody_url(@_personnage_de_mangas_goody), params: { _personnage_de_mangas_goody: { name: @_personnage_de_mangas_goody.name } }
    assert_redirected_to _personnage_de_mangas_goody_url(@_personnage_de_mangas_goody)
  end

  test "should destroy _personnage_de_mangas_goody" do
    assert_difference("PersonnageDeMangasGoody.count", -1) do
      delete _personnage_de_mangas_goody_url(@_personnage_de_mangas_goody)
    end

    assert_redirected_to _personnage_de_mangas_goodies_url
  end
end
