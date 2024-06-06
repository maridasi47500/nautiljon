require "application_system_test_case"

class FilmsAsiatiquesEnSallesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_en_salle = _films_asiatiques_en_salles(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_en_salles_url
    assert_selector "h1", text: "Films asiatiques en salles"
  end

  test "should create films asiatiques en salle" do
    visit _films_asiatiques_en_salles_url
    click_on "New films asiatiques en salle"

    fill_in "", with: @_films_asiatiques_en_salle.
    fill_in "Films asiatiques en salles acteurs", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_acteurs_id
    fill_in "Films asiatiques en salles actualite", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_actualite_id
    fill_in "Films asiatiques en salles actualite mini", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_actualite_mini_id
    fill_in "Films asiatiques en salles am", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_am_id
    fill_in "Films asiatiques en salles anime", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_anime_id
    fill_in "Films asiatiques en salles drama", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_drama_id
    fill_in "Films asiatiques en salles genres", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_genres_id
    fill_in "Films asiatiques en salles langue", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_langue_id
    fill_in "Films asiatiques en salles pays", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_pays_id
    fill_in "Films asiatiques en salles pays origine", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_pays_origine_id
    fill_in "Films asiatiques en salles staff people", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_staff_people_id
    fill_in "Films asiatiques en salles staff role", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_staff_role_id
    fill_in "Films asiatiques en salles type", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_type_id
    fill_in "Acceptregles", with: @_films_asiatiques_en_salle.acceptregles
    fill_in "Age", with: @_films_asiatiques_en_salle.age
    fill_in "Annee", with: @_films_asiatiques_en_salle.annee
    fill_in "Comment", with: @_films_asiatiques_en_salle.comment
    fill_in "Duree", with: @_films_asiatiques_en_salle.duree
    fill_in "Image", with: @_films_asiatiques_en_salle.image
    fill_in "Recompense", with: @_films_asiatiques_en_salle.recompense
    fill_in "Site", with: @_films_asiatiques_en_salle.site
    fill_in "Site2", with: @_films_asiatiques_en_salle.site2
    fill_in "Synopsis", with: @_films_asiatiques_en_salle.synopsis
    fill_in "Titre", with: @_films_asiatiques_en_salle.titre
    fill_in "Titre original", with: @_films_asiatiques_en_salle.titre_original
    fill_in "Youtube", with: @_films_asiatiques_en_salle.youtube
    click_on "Create Films asiatiques en salle"

    assert_text "Films asiatiques en salle was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques en salle" do
    visit _films_asiatiques_en_salle_url(@_films_asiatiques_en_salle)
    click_on "Edit this films asiatiques en salle", match: :first

    fill_in "", with: @_films_asiatiques_en_salle.
    fill_in "Films asiatiques en salles acteurs", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_acteurs_id
    fill_in "Films asiatiques en salles actualite", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_actualite_id
    fill_in "Films asiatiques en salles actualite mini", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_actualite_mini_id
    fill_in "Films asiatiques en salles am", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_am_id
    fill_in "Films asiatiques en salles anime", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_anime_id
    fill_in "Films asiatiques en salles drama", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_drama_id
    fill_in "Films asiatiques en salles genres", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_genres_id
    fill_in "Films asiatiques en salles langue", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_langue_id
    fill_in "Films asiatiques en salles pays", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_pays_id
    fill_in "Films asiatiques en salles pays origine", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_pays_origine_id
    fill_in "Films asiatiques en salles staff people", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_staff_people_id
    fill_in "Films asiatiques en salles staff role", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_staff_role_id
    fill_in "Films asiatiques en salles type", with: @_films_asiatiques_en_salle._films_asiatiques_en_salles_type_id
    fill_in "Acceptregles", with: @_films_asiatiques_en_salle.acceptregles
    fill_in "Age", with: @_films_asiatiques_en_salle.age
    fill_in "Annee", with: @_films_asiatiques_en_salle.annee
    fill_in "Comment", with: @_films_asiatiques_en_salle.comment
    fill_in "Duree", with: @_films_asiatiques_en_salle.duree
    fill_in "Image", with: @_films_asiatiques_en_salle.image
    fill_in "Recompense", with: @_films_asiatiques_en_salle.recompense
    fill_in "Site", with: @_films_asiatiques_en_salle.site
    fill_in "Site2", with: @_films_asiatiques_en_salle.site2
    fill_in "Synopsis", with: @_films_asiatiques_en_salle.synopsis
    fill_in "Titre", with: @_films_asiatiques_en_salle.titre
    fill_in "Titre original", with: @_films_asiatiques_en_salle.titre_original
    fill_in "Youtube", with: @_films_asiatiques_en_salle.youtube
    click_on "Update Films asiatiques en salle"

    assert_text "Films asiatiques en salle was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques en salle" do
    visit _films_asiatiques_en_salle_url(@_films_asiatiques_en_salle)
    click_on "Destroy this films asiatiques en salle", match: :first

    assert_text "Films asiatiques en salle was successfully destroyed"
  end
end
