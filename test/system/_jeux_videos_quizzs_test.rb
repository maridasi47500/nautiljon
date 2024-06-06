require "application_system_test_case"

class JeuxVideosQuizzsTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_quizz = _jeux_videos_quizzs(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_quizzs_url
    assert_selector "h1", text: "Jeux videos quizzs"
  end

  test "should create jeux videos quizz" do
    visit _jeux_videos_quizzs_url
    click_on "New jeux videos quizz"

    fill_in "Name", with: @_jeux_videos_quizz.name
    click_on "Create Jeux videos quizz"

    assert_text "Jeux videos quizz was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos quizz" do
    visit _jeux_videos_quizz_url(@_jeux_videos_quizz)
    click_on "Edit this jeux videos quizz", match: :first

    fill_in "Name", with: @_jeux_videos_quizz.name
    click_on "Update Jeux videos quizz"

    assert_text "Jeux videos quizz was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos quizz" do
    visit _jeux_videos_quizz_url(@_jeux_videos_quizz)
    click_on "Destroy this jeux videos quizz", match: :first

    assert_text "Jeux videos quizz was successfully destroyed"
  end
end
