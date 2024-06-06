require "application_system_test_case"

class BrevesQuizzsTest < ApplicationSystemTestCase
  setup do
    @_breves_quizz = _breves_quizzs(:one)
  end

  test "visiting the index" do
    visit _breves_quizzs_url
    assert_selector "h1", text: "Breves quizzs"
  end

  test "should create breves quizz" do
    visit _breves_quizzs_url
    click_on "New breves quizz"

    fill_in "Name", with: @_breves_quizz.name
    click_on "Create Breves quizz"

    assert_text "Breves quizz was successfully created"
    click_on "Back"
  end

  test "should update Breves quizz" do
    visit _breves_quizz_url(@_breves_quizz)
    click_on "Edit this breves quizz", match: :first

    fill_in "Name", with: @_breves_quizz.name
    click_on "Update Breves quizz"

    assert_text "Breves quizz was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves quizz" do
    visit _breves_quizz_url(@_breves_quizz)
    click_on "Destroy this breves quizz", match: :first

    assert_text "Breves quizz was successfully destroyed"
  end
end
