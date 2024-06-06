require "application_system_test_case"

class AnimesActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @animes_actualite_mini = animes_actualite_minis(:one)
  end

  test "visiting the index" do
    visit animes_actualite_minis_url
    assert_selector "h1", text: "Animes actualite minis"
  end

  test "should create animes actualite mini" do
    visit animes_actualite_minis_url
    click_on "New animes actualite mini"

    fill_in "Name", with: @animes_actualite_mini.name
    click_on "Create Animes actualite mini"

    assert_text "Animes actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Animes actualite mini" do
    visit animes_actualite_mini_url(@animes_actualite_mini)
    click_on "Edit this animes actualite mini", match: :first

    fill_in "Name", with: @animes_actualite_mini.name
    click_on "Update Animes actualite mini"

    assert_text "Animes actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes actualite mini" do
    visit animes_actualite_mini_url(@animes_actualite_mini)
    click_on "Destroy this animes actualite mini", match: :first

    assert_text "Animes actualite mini was successfully destroyed"
  end
end
