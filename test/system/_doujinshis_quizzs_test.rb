require "application_system_test_case"

class DoujinshisQuizzsTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_quizz = _doujinshis_quizzs(:one)
  end

  test "visiting the index" do
    visit _doujinshis_quizzs_url
    assert_selector "h1", text: "Doujinshis quizzs"
  end

  test "should create doujinshis quizz" do
    visit _doujinshis_quizzs_url
    click_on "New doujinshis quizz"

    fill_in "Name", with: @_doujinshis_quizz.name
    click_on "Create Doujinshis quizz"

    assert_text "Doujinshis quizz was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis quizz" do
    visit _doujinshis_quizz_url(@_doujinshis_quizz)
    click_on "Edit this doujinshis quizz", match: :first

    fill_in "Name", with: @_doujinshis_quizz.name
    click_on "Update Doujinshis quizz"

    assert_text "Doujinshis quizz was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis quizz" do
    visit _doujinshis_quizz_url(@_doujinshis_quizz)
    click_on "Destroy this doujinshis quizz", match: :first

    assert_text "Doujinshis quizz was successfully destroyed"
  end
end
