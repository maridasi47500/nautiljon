require "application_system_test_case"

class OstsDramasTest < ApplicationSystemTestCase
  setup do
    @osts_drama = osts_dramas(:one)
  end

  test "visiting the index" do
    visit osts_dramas_url
    assert_selector "h1", text: "Osts dramas"
  end

  test "should create osts drama" do
    visit osts_dramas_url
    click_on "New osts drama"

    fill_in "Name", with: @osts_drama.name
    click_on "Create Osts drama"

    assert_text "Osts drama was successfully created"
    click_on "Back"
  end

  test "should update Osts drama" do
    visit osts_drama_url(@osts_drama)
    click_on "Edit this osts drama", match: :first

    fill_in "Name", with: @osts_drama.name
    click_on "Update Osts drama"

    assert_text "Osts drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts drama" do
    visit osts_drama_url(@osts_drama)
    click_on "Destroy this osts drama", match: :first

    assert_text "Osts drama was successfully destroyed"
  end
end
