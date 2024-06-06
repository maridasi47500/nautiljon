require "application_system_test_case"

class FilmsAsiatiquesDvdsTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_dvd = _films_asiatiques_dvds(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_dvds_url
    assert_selector "h1", text: "Films asiatiques dvds"
  end

  test "should create films asiatiques dvd" do
    visit _films_asiatiques_dvds_url
    click_on "New films asiatiques dvd"

    fill_in "Name", with: @_films_asiatiques_dvd.name
    click_on "Create Films asiatiques dvd"

    assert_text "Films asiatiques dvd was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques dvd" do
    visit _films_asiatiques_dvd_url(@_films_asiatiques_dvd)
    click_on "Edit this films asiatiques dvd", match: :first

    fill_in "Name", with: @_films_asiatiques_dvd.name
    click_on "Update Films asiatiques dvd"

    assert_text "Films asiatiques dvd was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques dvd" do
    visit _films_asiatiques_dvd_url(@_films_asiatiques_dvd)
    click_on "Destroy this films asiatiques dvd", match: :first

    assert_text "Films asiatiques dvd was successfully destroyed"
  end
end
