require "application_system_test_case"

class AnimesJvsTest < ApplicationSystemTestCase
  setup do
    @animes_jv = animes_jvs(:one)
  end

  test "visiting the index" do
    visit animes_jvs_url
    assert_selector "h1", text: "Animes jvs"
  end

  test "should create animes jv" do
    visit animes_jvs_url
    click_on "New animes jv"

    fill_in "Name", with: @animes_jv.name
    click_on "Create Animes jv"

    assert_text "Animes jv was successfully created"
    click_on "Back"
  end

  test "should update Animes jv" do
    visit animes_jv_url(@animes_jv)
    click_on "Edit this animes jv", match: :first

    fill_in "Name", with: @animes_jv.name
    click_on "Update Animes jv"

    assert_text "Animes jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes jv" do
    visit animes_jv_url(@animes_jv)
    click_on "Destroy this animes jv", match: :first

    assert_text "Animes jv was successfully destroyed"
  end
end
