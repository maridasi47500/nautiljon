require "application_system_test_case"

class AnimesLnsTest < ApplicationSystemTestCase
  setup do
    @animes_ln = animes_lns(:one)
  end

  test "visiting the index" do
    visit animes_lns_url
    assert_selector "h1", text: "Animes lns"
  end

  test "should create animes ln" do
    visit animes_lns_url
    click_on "New animes ln"

    fill_in "Name", with: @animes_ln.name
    click_on "Create Animes ln"

    assert_text "Animes ln was successfully created"
    click_on "Back"
  end

  test "should update Animes ln" do
    visit animes_ln_url(@animes_ln)
    click_on "Edit this animes ln", match: :first

    fill_in "Name", with: @animes_ln.name
    click_on "Update Animes ln"

    assert_text "Animes ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes ln" do
    visit animes_ln_url(@animes_ln)
    click_on "Destroy this animes ln", match: :first

    assert_text "Animes ln was successfully destroyed"
  end
end
