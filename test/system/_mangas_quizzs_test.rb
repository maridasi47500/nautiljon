require "application_system_test_case"

class MangasQuizzsTest < ApplicationSystemTestCase
  setup do
    @_mangas_quizz = _mangas_quizzs(:one)
  end

  test "visiting the index" do
    visit _mangas_quizzs_url
    assert_selector "h1", text: "Mangas quizzs"
  end

  test "should create mangas quizz" do
    visit _mangas_quizzs_url
    click_on "New mangas quizz"

    fill_in "Name", with: @_mangas_quizz.name
    click_on "Create Mangas quizz"

    assert_text "Mangas quizz was successfully created"
    click_on "Back"
  end

  test "should update Mangas quizz" do
    visit _mangas_quizz_url(@_mangas_quizz)
    click_on "Edit this mangas quizz", match: :first

    fill_in "Name", with: @_mangas_quizz.name
    click_on "Update Mangas quizz"

    assert_text "Mangas quizz was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas quizz" do
    visit _mangas_quizz_url(@_mangas_quizz)
    click_on "Destroy this mangas quizz", match: :first

    assert_text "Mangas quizz was successfully destroyed"
  end
end
