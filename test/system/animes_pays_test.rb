require "application_system_test_case"

class AnimesPaysTest < ApplicationSystemTestCase
  setup do
    @animes_pay = animes_pays(:one)
  end

  test "visiting the index" do
    visit animes_pays_url
    assert_selector "h1", text: "Animes pays"
  end

  test "should create animes pay" do
    visit animes_pays_url
    click_on "New animes pay"

    fill_in "Name", with: @animes_pay.name
    click_on "Create Animes pay"

    assert_text "Animes pay was successfully created"
    click_on "Back"
  end

  test "should update Animes pay" do
    visit animes_pay_url(@animes_pay)
    click_on "Edit this animes pay", match: :first

    fill_in "Name", with: @animes_pay.name
    click_on "Update Animes pay"

    assert_text "Animes pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes pay" do
    visit animes_pay_url(@animes_pay)
    click_on "Destroy this animes pay", match: :first

    assert_text "Animes pay was successfully destroyed"
  end
end
