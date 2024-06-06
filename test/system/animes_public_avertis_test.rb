require "application_system_test_case"

class AnimesPublicAvertisTest < ApplicationSystemTestCase
  setup do
    @animes_public_averti = animes_public_avertis(:one)
  end

  test "visiting the index" do
    visit animes_public_avertis_url
    assert_selector "h1", text: "Animes public avertis"
  end

  test "should create animes public averti" do
    visit animes_public_avertis_url
    click_on "New animes public averti"

    fill_in "Name", with: @animes_public_averti.name
    click_on "Create Animes public averti"

    assert_text "Animes public averti was successfully created"
    click_on "Back"
  end

  test "should update Animes public averti" do
    visit animes_public_averti_url(@animes_public_averti)
    click_on "Edit this animes public averti", match: :first

    fill_in "Name", with: @animes_public_averti.name
    click_on "Update Animes public averti"

    assert_text "Animes public averti was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes public averti" do
    visit animes_public_averti_url(@animes_public_averti)
    click_on "Destroy this animes public averti", match: :first

    assert_text "Animes public averti was successfully destroyed"
  end
end
