require "test_helper"

class PersonnageDeMangasMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_de_mangas_manga = _personnage_de_mangas_mangas(:one)
  end

  test "should get index" do
    get _personnage_de_mangas_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_de_mangas_manga_url
    assert_response :success
  end

  test "should create _personnage_de_mangas_manga" do
    assert_difference("PersonnageDeMangasManga.count") do
      post _personnage_de_mangas_mangas_url, params: { _personnage_de_mangas_manga: { name: @_personnage_de_mangas_manga.name } }
    end

    assert_redirected_to _personnage_de_mangas_manga_url(PersonnageDeMangasManga.last)
  end

  test "should show _personnage_de_mangas_manga" do
    get _personnage_de_mangas_manga_url(@_personnage_de_mangas_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_de_mangas_manga_url(@_personnage_de_mangas_manga)
    assert_response :success
  end

  test "should update _personnage_de_mangas_manga" do
    patch _personnage_de_mangas_manga_url(@_personnage_de_mangas_manga), params: { _personnage_de_mangas_manga: { name: @_personnage_de_mangas_manga.name } }
    assert_redirected_to _personnage_de_mangas_manga_url(@_personnage_de_mangas_manga)
  end

  test "should destroy _personnage_de_mangas_manga" do
    assert_difference("PersonnageDeMangasManga.count", -1) do
      delete _personnage_de_mangas_manga_url(@_personnage_de_mangas_manga)
    end

    assert_redirected_to _personnage_de_mangas_mangas_url
  end
end
