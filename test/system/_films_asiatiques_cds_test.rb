require "application_system_test_case"

class FilmsAsiatiquesCdsTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_cd = _films_asiatiques_cds(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_cds_url
    assert_selector "h1", text: "Films asiatiques cds"
  end

  test "should create films asiatiques cd" do
    visit _films_asiatiques_cds_url
    click_on "New films asiatiques cd"

    fill_in "Name", with: @_films_asiatiques_cd.name
    click_on "Create Films asiatiques cd"

    assert_text "Films asiatiques cd was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques cd" do
    visit _films_asiatiques_cd_url(@_films_asiatiques_cd)
    click_on "Edit this films asiatiques cd", match: :first

    fill_in "Name", with: @_films_asiatiques_cd.name
    click_on "Update Films asiatiques cd"

    assert_text "Films asiatiques cd was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques cd" do
    visit _films_asiatiques_cd_url(@_films_asiatiques_cd)
    click_on "Destroy this films asiatiques cd", match: :first

    assert_text "Films asiatiques cd was successfully destroyed"
  end
end
