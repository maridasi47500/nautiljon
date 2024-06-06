require "application_system_test_case"

class AnimesEncoursTest < ApplicationSystemTestCase
  setup do
    @animes_encour = animes_encours(:one)
  end

  test "visiting the index" do
    visit animes_encours_url
    assert_selector "h1", text: "Animes encours"
  end

  test "should create animes encour" do
    visit animes_encours_url
    click_on "New animes encour"

    fill_in "Name", with: @animes_encour.name
    click_on "Create Animes encour"

    assert_text "Animes encour was successfully created"
    click_on "Back"
  end

  test "should update Animes encour" do
    visit animes_encour_url(@animes_encour)
    click_on "Edit this animes encour", match: :first

    fill_in "Name", with: @animes_encour.name
    click_on "Update Animes encour"

    assert_text "Animes encour was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes encour" do
    visit animes_encour_url(@animes_encour)
    click_on "Destroy this animes encour", match: :first

    assert_text "Animes encour was successfully destroyed"
  end
end
