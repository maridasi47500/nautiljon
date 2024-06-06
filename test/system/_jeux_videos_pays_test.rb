require "application_system_test_case"

class JeuxVideosPaysTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_pay = _jeux_videos_pays(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_pays_url
    assert_selector "h1", text: "Jeux videos pays"
  end

  test "should create jeux videos pay" do
    visit _jeux_videos_pays_url
    click_on "New jeux videos pay"

    fill_in "Name", with: @_jeux_videos_pay.name
    click_on "Create Jeux videos pay"

    assert_text "Jeux videos pay was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos pay" do
    visit _jeux_videos_pay_url(@_jeux_videos_pay)
    click_on "Edit this jeux videos pay", match: :first

    fill_in "Name", with: @_jeux_videos_pay.name
    click_on "Update Jeux videos pay"

    assert_text "Jeux videos pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos pay" do
    visit _jeux_videos_pay_url(@_jeux_videos_pay)
    click_on "Destroy this jeux videos pay", match: :first

    assert_text "Jeux videos pay was successfully destroyed"
  end
end
