require "application_system_test_case"

class FilmsAsiatiquesEnSallesPaysTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_en_salles_pay = _films_asiatiques_en_salles_pays(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_en_salles_pays_url
    assert_selector "h1", text: "Films asiatiques en salles pays"
  end

  test "should create films asiatiques en salles pay" do
    visit _films_asiatiques_en_salles_pays_url
    click_on "New films asiatiques en salles pay"

    fill_in "Name", with: @_films_asiatiques_en_salles_pay.name
    click_on "Create Films asiatiques en salles pay"

    assert_text "Films asiatiques en salles pay was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques en salles pay" do
    visit _films_asiatiques_en_salles_pay_url(@_films_asiatiques_en_salles_pay)
    click_on "Edit this films asiatiques en salles pay", match: :first

    fill_in "Name", with: @_films_asiatiques_en_salles_pay.name
    click_on "Update Films asiatiques en salles pay"

    assert_text "Films asiatiques en salles pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques en salles pay" do
    visit _films_asiatiques_en_salles_pay_url(@_films_asiatiques_en_salles_pay)
    click_on "Destroy this films asiatiques en salles pay", match: :first

    assert_text "Films asiatiques en salles pay was successfully destroyed"
  end
end
