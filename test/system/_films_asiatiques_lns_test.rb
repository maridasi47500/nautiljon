require "application_system_test_case"

class FilmsAsiatiquesLnsTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_ln = _films_asiatiques_lns(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_lns_url
    assert_selector "h1", text: "Films asiatiques lns"
  end

  test "should create films asiatiques ln" do
    visit _films_asiatiques_lns_url
    click_on "New films asiatiques ln"

    fill_in "Name", with: @_films_asiatiques_ln.name
    click_on "Create Films asiatiques ln"

    assert_text "Films asiatiques ln was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques ln" do
    visit _films_asiatiques_ln_url(@_films_asiatiques_ln)
    click_on "Edit this films asiatiques ln", match: :first

    fill_in "Name", with: @_films_asiatiques_ln.name
    click_on "Update Films asiatiques ln"

    assert_text "Films asiatiques ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques ln" do
    visit _films_asiatiques_ln_url(@_films_asiatiques_ln)
    click_on "Destroy this films asiatiques ln", match: :first

    assert_text "Films asiatiques ln was successfully destroyed"
  end
end
