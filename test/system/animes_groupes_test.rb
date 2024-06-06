require "application_system_test_case"

class AnimesGroupesTest < ApplicationSystemTestCase
  setup do
    @animes_groupe = animes_groupes(:one)
  end

  test "visiting the index" do
    visit animes_groupes_url
    assert_selector "h1", text: "Animes groupes"
  end

  test "should create animes groupe" do
    visit animes_groupes_url
    click_on "New animes groupe"

    fill_in "Name", with: @animes_groupe.name
    click_on "Create Animes groupe"

    assert_text "Animes groupe was successfully created"
    click_on "Back"
  end

  test "should update Animes groupe" do
    visit animes_groupe_url(@animes_groupe)
    click_on "Edit this animes groupe", match: :first

    fill_in "Name", with: @animes_groupe.name
    click_on "Update Animes groupe"

    assert_text "Animes groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes groupe" do
    visit animes_groupe_url(@animes_groupe)
    click_on "Destroy this animes groupe", match: :first

    assert_text "Animes groupe was successfully destroyed"
  end
end
