require "application_system_test_case"

class AnimesLnPlusTest < ApplicationSystemTestCase
  setup do
    @animes_ln_plu = animes_ln_plus(:one)
  end

  test "visiting the index" do
    visit animes_ln_plus_url
    assert_selector "h1", text: "Animes ln plus"
  end

  test "should create animes ln plu" do
    visit animes_ln_plus_url
    click_on "New animes ln plu"

    fill_in "Name", with: @animes_ln_plu.name
    click_on "Create Animes ln plu"

    assert_text "Animes ln plu was successfully created"
    click_on "Back"
  end

  test "should update Animes ln plu" do
    visit animes_ln_plu_url(@animes_ln_plu)
    click_on "Edit this animes ln plu", match: :first

    fill_in "Name", with: @animes_ln_plu.name
    click_on "Update Animes ln plu"

    assert_text "Animes ln plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes ln plu" do
    visit animes_ln_plu_url(@animes_ln_plu)
    click_on "Destroy this animes ln plu", match: :first

    assert_text "Animes ln plu was successfully destroyed"
  end
end
