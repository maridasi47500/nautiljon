require "application_system_test_case"

class LightNovelsQuizzsTest < ApplicationSystemTestCase
  setup do
    @_light_novels_quizz = _light_novels_quizzs(:one)
  end

  test "visiting the index" do
    visit _light_novels_quizzs_url
    assert_selector "h1", text: "Light novels quizzs"
  end

  test "should create light novels quizz" do
    visit _light_novels_quizzs_url
    click_on "New light novels quizz"

    fill_in "Name", with: @_light_novels_quizz.name
    click_on "Create Light novels quizz"

    assert_text "Light novels quizz was successfully created"
    click_on "Back"
  end

  test "should update Light novels quizz" do
    visit _light_novels_quizz_url(@_light_novels_quizz)
    click_on "Edit this light novels quizz", match: :first

    fill_in "Name", with: @_light_novels_quizz.name
    click_on "Update Light novels quizz"

    assert_text "Light novels quizz was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels quizz" do
    visit _light_novels_quizz_url(@_light_novels_quizz)
    click_on "Destroy this light novels quizz", match: :first

    assert_text "Light novels quizz was successfully destroyed"
  end
end
