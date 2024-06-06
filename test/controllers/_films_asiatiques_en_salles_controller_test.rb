require "test_helper"

class FilmsAsiatiquesEnSallesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_en_salle = _films_asiatiques_en_salles(:one)
  end

  test "should get index" do
    get _films_asiatiques_en_salles_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_en_salle_url
    assert_response :success
  end

  test "should create _films_asiatiques_en_salle" do
    assert_difference("FilmsAsiatiquesEnSalle.count") do
      post _films_asiatiques_en_salles_url, params: { _films_asiatiques_en_salle: { : @_films_asiatiques_en_salle., _films_asiatiques_en_salles_acteurs_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_acteurs_id, _films_asiatiques_en_salles_actualite_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_actualite_id, _films_asiatiques_en_salles_actualite_mini_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_actualite_mini_id, _films_asiatiques_en_salles_am_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_am_id, _films_asiatiques_en_salles_anime_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_anime_id, _films_asiatiques_en_salles_drama_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_drama_id, _films_asiatiques_en_salles_genres_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_genres_id, _films_asiatiques_en_salles_langue_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_langue_id, _films_asiatiques_en_salles_pays_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_pays_id, _films_asiatiques_en_salles_pays_origine_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_pays_origine_id, _films_asiatiques_en_salles_staff_people_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_staff_people_id, _films_asiatiques_en_salles_staff_role_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_staff_role_id, _films_asiatiques_en_salles_type_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_type_id, acceptregles: @_films_asiatiques_en_salle.acceptregles, age: @_films_asiatiques_en_salle.age, annee: @_films_asiatiques_en_salle.annee, comment: @_films_asiatiques_en_salle.comment, duree: @_films_asiatiques_en_salle.duree, image: @_films_asiatiques_en_salle.image, recompense: @_films_asiatiques_en_salle.recompense, site: @_films_asiatiques_en_salle.site, site2: @_films_asiatiques_en_salle.site2, synopsis: @_films_asiatiques_en_salle.synopsis, titre: @_films_asiatiques_en_salle.titre, titre_original: @_films_asiatiques_en_salle.titre_original, youtube: @_films_asiatiques_en_salle.youtube } }
    end

    assert_redirected_to _films_asiatiques_en_salle_url(FilmsAsiatiquesEnSalle.last)
  end

  test "should show _films_asiatiques_en_salle" do
    get _films_asiatiques_en_salle_url(@_films_asiatiques_en_salle)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_en_salle_url(@_films_asiatiques_en_salle)
    assert_response :success
  end

  test "should update _films_asiatiques_en_salle" do
    patch _films_asiatiques_en_salle_url(@_films_asiatiques_en_salle), params: { _films_asiatiques_en_salle: { : @_films_asiatiques_en_salle., _films_asiatiques_en_salles_acteurs_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_acteurs_id, _films_asiatiques_en_salles_actualite_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_actualite_id, _films_asiatiques_en_salles_actualite_mini_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_actualite_mini_id, _films_asiatiques_en_salles_am_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_am_id, _films_asiatiques_en_salles_anime_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_anime_id, _films_asiatiques_en_salles_drama_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_drama_id, _films_asiatiques_en_salles_genres_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_genres_id, _films_asiatiques_en_salles_langue_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_langue_id, _films_asiatiques_en_salles_pays_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_pays_id, _films_asiatiques_en_salles_pays_origine_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_pays_origine_id, _films_asiatiques_en_salles_staff_people_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_staff_people_id, _films_asiatiques_en_salles_staff_role_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_staff_role_id, _films_asiatiques_en_salles_type_id: @_films_asiatiques_en_salle._films_asiatiques_en_salles_type_id, acceptregles: @_films_asiatiques_en_salle.acceptregles, age: @_films_asiatiques_en_salle.age, annee: @_films_asiatiques_en_salle.annee, comment: @_films_asiatiques_en_salle.comment, duree: @_films_asiatiques_en_salle.duree, image: @_films_asiatiques_en_salle.image, recompense: @_films_asiatiques_en_salle.recompense, site: @_films_asiatiques_en_salle.site, site2: @_films_asiatiques_en_salle.site2, synopsis: @_films_asiatiques_en_salle.synopsis, titre: @_films_asiatiques_en_salle.titre, titre_original: @_films_asiatiques_en_salle.titre_original, youtube: @_films_asiatiques_en_salle.youtube } }
    assert_redirected_to _films_asiatiques_en_salle_url(@_films_asiatiques_en_salle)
  end

  test "should destroy _films_asiatiques_en_salle" do
    assert_difference("FilmsAsiatiquesEnSalle.count", -1) do
      delete _films_asiatiques_en_salle_url(@_films_asiatiques_en_salle)
    end

    assert_redirected_to _films_asiatiques_en_salles_url
  end
end
