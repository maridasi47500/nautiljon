require "application_system_test_case"

class AnimesAmPlusTest < ApplicationSystemTestCase
  setup do
    @animes_am_plu = animes_am_plus(:one)
  end

  test "visiting the index" do
    visit animes_am_plus_url
    assert_selector "h1", text: "Animes am plus"
  end

  test "should create animes am plu" do
    visit animes_am_plus_url
    click_on "New animes am plu"

    fill_in "Name", with: @animes_am_plu.name
    click_on "Create Animes am plu"

    assert_text "Animes am plu was successfully created"
    click_on "Back"
  end

  test "should update Animes am plu" do
    visit animes_am_plu_url(@animes_am_plu)
    click_on "Edit this animes am plu", match: :first

    fill_in "Name", with: @animes_am_plu.name
    click_on "Update Animes am plu"

    assert_text "Animes am plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes am plu" do
    visit animes_am_plu_url(@animes_am_plu)
    click_on "Destroy this animes am plu", match: :first

    assert_text "Animes am plu was successfully destroyed"
  end
end
