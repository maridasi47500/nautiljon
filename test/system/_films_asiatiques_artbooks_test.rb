require "application_system_test_case"

class FilmsAsiatiquesArtbooksTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_artbook = _films_asiatiques_artbooks(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_artbooks_url
    assert_selector "h1", text: "Films asiatiques artbooks"
  end

  test "should create films asiatiques artbook" do
    visit _films_asiatiques_artbooks_url
    click_on "New films asiatiques artbook"

    fill_in "Name", with: @_films_asiatiques_artbook.name
    click_on "Create Films asiatiques artbook"

    assert_text "Films asiatiques artbook was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques artbook" do
    visit _films_asiatiques_artbook_url(@_films_asiatiques_artbook)
    click_on "Edit this films asiatiques artbook", match: :first

    fill_in "Name", with: @_films_asiatiques_artbook.name
    click_on "Update Films asiatiques artbook"

    assert_text "Films asiatiques artbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques artbook" do
    visit _films_asiatiques_artbook_url(@_films_asiatiques_artbook)
    click_on "Destroy this films asiatiques artbook", match: :first

    assert_text "Films asiatiques artbook was successfully destroyed"
  end
end
