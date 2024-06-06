require "application_system_test_case"

class JeuxVideosStaffSocietesTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_staff_societe = _jeux_videos_staff_societes(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_staff_societes_url
    assert_selector "h1", text: "Jeux videos staff societes"
  end

  test "should create jeux videos staff societe" do
    visit _jeux_videos_staff_societes_url
    click_on "New jeux videos staff societe"

    fill_in "Name", with: @_jeux_videos_staff_societe.name
    click_on "Create Jeux videos staff societe"

    assert_text "Jeux videos staff societe was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos staff societe" do
    visit _jeux_videos_staff_societe_url(@_jeux_videos_staff_societe)
    click_on "Edit this jeux videos staff societe", match: :first

    fill_in "Name", with: @_jeux_videos_staff_societe.name
    click_on "Update Jeux videos staff societe"

    assert_text "Jeux videos staff societe was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos staff societe" do
    visit _jeux_videos_staff_societe_url(@_jeux_videos_staff_societe)
    click_on "Destroy this jeux videos staff societe", match: :first

    assert_text "Jeux videos staff societe was successfully destroyed"
  end
end
