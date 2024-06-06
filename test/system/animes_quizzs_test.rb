require "application_system_test_case"

class AnimesQuizzsTest < ApplicationSystemTestCase
  setup do
    @animes_quizz = animes_quizzs(:one)
  end

  test "visiting the index" do
    visit animes_quizzs_url
    assert_selector "h1", text: "Animes quizzs"
  end

  test "should create animes quizz" do
    visit animes_quizzs_url
    click_on "New animes quizz"

    fill_in "Name", with: @animes_quizz.name
    click_on "Create Animes quizz"

    assert_text "Animes quizz was successfully created"
    click_on "Back"
  end

  test "should update Animes quizz" do
    visit animes_quizz_url(@animes_quizz)
    click_on "Edit this animes quizz", match: :first

    fill_in "Name", with: @animes_quizz.name
    click_on "Update Animes quizz"

    assert_text "Animes quizz was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes quizz" do
    visit animes_quizz_url(@animes_quizz)
    click_on "Destroy this animes quizz", match: :first

    assert_text "Animes quizz was successfully destroyed"
  end
end
