require "application_system_test_case"

class AnimesOriginesTest < ApplicationSystemTestCase
  setup do
    @animes_origine = animes_origines(:one)
  end

  test "visiting the index" do
    visit animes_origines_url
    assert_selector "h1", text: "Animes origines"
  end

  test "should create animes origine" do
    visit animes_origines_url
    click_on "New animes origine"

    fill_in "Name", with: @animes_origine.name
    click_on "Create Animes origine"

    assert_text "Animes origine was successfully created"
    click_on "Back"
  end

  test "should update Animes origine" do
    visit animes_origine_url(@animes_origine)
    click_on "Edit this animes origine", match: :first

    fill_in "Name", with: @animes_origine.name
    click_on "Update Animes origine"

    assert_text "Animes origine was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes origine" do
    visit animes_origine_url(@animes_origine)
    click_on "Destroy this animes origine", match: :first

    assert_text "Animes origine was successfully destroyed"
  end
end
