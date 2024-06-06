require "application_system_test_case"

class JeuxVideosLnPlusTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_ln_plu = _jeux_videos_ln_plus(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_ln_plus_url
    assert_selector "h1", text: "Jeux videos ln plus"
  end

  test "should create jeux videos ln plu" do
    visit _jeux_videos_ln_plus_url
    click_on "New jeux videos ln plu"

    fill_in "Name", with: @_jeux_videos_ln_plu.name
    click_on "Create Jeux videos ln plu"

    assert_text "Jeux videos ln plu was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos ln plu" do
    visit _jeux_videos_ln_plu_url(@_jeux_videos_ln_plu)
    click_on "Edit this jeux videos ln plu", match: :first

    fill_in "Name", with: @_jeux_videos_ln_plu.name
    click_on "Update Jeux videos ln plu"

    assert_text "Jeux videos ln plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos ln plu" do
    visit _jeux_videos_ln_plu_url(@_jeux_videos_ln_plu)
    click_on "Destroy this jeux videos ln plu", match: :first

    assert_text "Jeux videos ln plu was successfully destroyed"
  end
end
