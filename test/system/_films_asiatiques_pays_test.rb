require "application_system_test_case"

class FilmsAsiatiquesPaysTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_pay = _films_asiatiques_pays(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_pays_url
    assert_selector "h1", text: "Films asiatiques pays"
  end

  test "should create films asiatiques pay" do
    visit _films_asiatiques_pays_url
    click_on "New films asiatiques pay"

    fill_in "Name", with: @_films_asiatiques_pay.name
    click_on "Create Films asiatiques pay"

    assert_text "Films asiatiques pay was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques pay" do
    visit _films_asiatiques_pay_url(@_films_asiatiques_pay)
    click_on "Edit this films asiatiques pay", match: :first

    fill_in "Name", with: @_films_asiatiques_pay.name
    click_on "Update Films asiatiques pay"

    assert_text "Films asiatiques pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques pay" do
    visit _films_asiatiques_pay_url(@_films_asiatiques_pay)
    click_on "Destroy this films asiatiques pay", match: :first

    assert_text "Films asiatiques pay was successfully destroyed"
  end
end
