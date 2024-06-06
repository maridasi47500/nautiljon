require "application_system_test_case"

class FilmsAsiatiquesQuizzsTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_quizz = _films_asiatiques_quizzs(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_quizzs_url
    assert_selector "h1", text: "Films asiatiques quizzs"
  end

  test "should create films asiatiques quizz" do
    visit _films_asiatiques_quizzs_url
    click_on "New films asiatiques quizz"

    fill_in "Name", with: @_films_asiatiques_quizz.name
    click_on "Create Films asiatiques quizz"

    assert_text "Films asiatiques quizz was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques quizz" do
    visit _films_asiatiques_quizz_url(@_films_asiatiques_quizz)
    click_on "Edit this films asiatiques quizz", match: :first

    fill_in "Name", with: @_films_asiatiques_quizz.name
    click_on "Update Films asiatiques quizz"

    assert_text "Films asiatiques quizz was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques quizz" do
    visit _films_asiatiques_quizz_url(@_films_asiatiques_quizz)
    click_on "Destroy this films asiatiques quizz", match: :first

    assert_text "Films asiatiques quizz was successfully destroyed"
  end
end
