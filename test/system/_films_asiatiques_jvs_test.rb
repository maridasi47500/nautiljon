require "application_system_test_case"

class FilmsAsiatiquesJvsTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_jv = _films_asiatiques_jvs(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_jvs_url
    assert_selector "h1", text: "Films asiatiques jvs"
  end

  test "should create films asiatiques jv" do
    visit _films_asiatiques_jvs_url
    click_on "New films asiatiques jv"

    fill_in "Name", with: @_films_asiatiques_jv.name
    click_on "Create Films asiatiques jv"

    assert_text "Films asiatiques jv was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques jv" do
    visit _films_asiatiques_jv_url(@_films_asiatiques_jv)
    click_on "Edit this films asiatiques jv", match: :first

    fill_in "Name", with: @_films_asiatiques_jv.name
    click_on "Update Films asiatiques jv"

    assert_text "Films asiatiques jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques jv" do
    visit _films_asiatiques_jv_url(@_films_asiatiques_jv)
    click_on "Destroy this films asiatiques jv", match: :first

    assert_text "Films asiatiques jv was successfully destroyed"
  end
end
