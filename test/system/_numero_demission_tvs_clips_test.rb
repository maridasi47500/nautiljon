require "application_system_test_case"

class NumeroDemissionTvsClipsTest < ApplicationSystemTestCase
  setup do
    @_numero_demission_tvs_clip = _numero_demission_tvs_clips(:one)
  end

  test "visiting the index" do
    visit _numero_demission_tvs_clips_url
    assert_selector "h1", text: "Numero demission tvs clips"
  end

  test "should create numero demission tvs clip" do
    visit _numero_demission_tvs_clips_url
    click_on "New numero demission tvs clip"

    fill_in "Name", with: @_numero_demission_tvs_clip.name
    click_on "Create Numero demission tvs clip"

    assert_text "Numero demission tvs clip was successfully created"
    click_on "Back"
  end

  test "should update Numero demission tvs clip" do
    visit _numero_demission_tvs_clip_url(@_numero_demission_tvs_clip)
    click_on "Edit this numero demission tvs clip", match: :first

    fill_in "Name", with: @_numero_demission_tvs_clip.name
    click_on "Update Numero demission tvs clip"

    assert_text "Numero demission tvs clip was successfully updated"
    click_on "Back"
  end

  test "should destroy Numero demission tvs clip" do
    visit _numero_demission_tvs_clip_url(@_numero_demission_tvs_clip)
    click_on "Destroy this numero demission tvs clip", match: :first

    assert_text "Numero demission tvs clip was successfully destroyed"
  end
end
