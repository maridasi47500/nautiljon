require "application_system_test_case"

class DramasPaysTest < ApplicationSystemTestCase
  setup do
    @_dramas_pay = _dramas_pays(:one)
  end

  test "visiting the index" do
    visit _dramas_pays_url
    assert_selector "h1", text: "Dramas pays"
  end

  test "should create dramas pay" do
    visit _dramas_pays_url
    click_on "New dramas pay"

    fill_in "Name", with: @_dramas_pay.name
    click_on "Create Dramas pay"

    assert_text "Dramas pay was successfully created"
    click_on "Back"
  end

  test "should update Dramas pay" do
    visit _dramas_pay_url(@_dramas_pay)
    click_on "Edit this dramas pay", match: :first

    fill_in "Name", with: @_dramas_pay.name
    click_on "Update Dramas pay"

    assert_text "Dramas pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas pay" do
    visit _dramas_pay_url(@_dramas_pay)
    click_on "Destroy this dramas pay", match: :first

    assert_text "Dramas pay was successfully destroyed"
  end
end
