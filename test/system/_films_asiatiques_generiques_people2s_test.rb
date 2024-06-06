require "application_system_test_case"

class FilmsAsiatiquesGeneriquesPeople2sTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_generiques_people2 = _films_asiatiques_generiques_people2s(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_generiques_people2s_url
    assert_selector "h1", text: "Films asiatiques generiques people2s"
  end

  test "should create films asiatiques generiques people2" do
    visit _films_asiatiques_generiques_people2s_url
    click_on "New films asiatiques generiques people2"

    fill_in "Name", with: @_films_asiatiques_generiques_people2.name
    click_on "Create Films asiatiques generiques people2"

    assert_text "Films asiatiques generiques people2 was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques generiques people2" do
    visit _films_asiatiques_generiques_people2_url(@_films_asiatiques_generiques_people2)
    click_on "Edit this films asiatiques generiques people2", match: :first

    fill_in "Name", with: @_films_asiatiques_generiques_people2.name
    click_on "Update Films asiatiques generiques people2"

    assert_text "Films asiatiques generiques people2 was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques generiques people2" do
    visit _films_asiatiques_generiques_people2_url(@_films_asiatiques_generiques_people2)
    click_on "Destroy this films asiatiques generiques people2", match: :first

    assert_text "Films asiatiques generiques people2 was successfully destroyed"
  end
end
