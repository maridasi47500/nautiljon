require "application_system_test_case"

class AnimesJvPlusTest < ApplicationSystemTestCase
  setup do
    @animes_jv_plu = animes_jv_plus(:one)
  end

  test "visiting the index" do
    visit animes_jv_plus_url
    assert_selector "h1", text: "Animes jv plus"
  end

  test "should create animes jv plu" do
    visit animes_jv_plus_url
    click_on "New animes jv plu"

    fill_in "Name", with: @animes_jv_plu.name
    click_on "Create Animes jv plu"

    assert_text "Animes jv plu was successfully created"
    click_on "Back"
  end

  test "should update Animes jv plu" do
    visit animes_jv_plu_url(@animes_jv_plu)
    click_on "Edit this animes jv plu", match: :first

    fill_in "Name", with: @animes_jv_plu.name
    click_on "Update Animes jv plu"

    assert_text "Animes jv plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes jv plu" do
    visit animes_jv_plu_url(@animes_jv_plu)
    click_on "Destroy this animes jv plu", match: :first

    assert_text "Animes jv plu was successfully destroyed"
  end
end
