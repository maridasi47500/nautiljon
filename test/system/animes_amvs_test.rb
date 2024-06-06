require "application_system_test_case"

class AnimesAmvsTest < ApplicationSystemTestCase
  setup do
    @animes_amv = animes_amvs(:one)
  end

  test "visiting the index" do
    visit animes_amvs_url
    assert_selector "h1", text: "Animes amvs"
  end

  test "should create animes amv" do
    visit animes_amvs_url
    click_on "New animes amv"

    fill_in "Name", with: @animes_amv.name
    click_on "Create Animes amv"

    assert_text "Animes amv was successfully created"
    click_on "Back"
  end

  test "should update Animes amv" do
    visit animes_amv_url(@animes_amv)
    click_on "Edit this animes amv", match: :first

    fill_in "Name", with: @animes_amv.name
    click_on "Update Animes amv"

    assert_text "Animes amv was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes amv" do
    visit animes_amv_url(@animes_amv)
    click_on "Destroy this animes amv", match: :first

    assert_text "Animes amv was successfully destroyed"
  end
end
