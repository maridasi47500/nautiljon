require "application_system_test_case"

class GeneriqueDeJeuVideosStaffPeopleTest < ApplicationSystemTestCase
  setup do
    @_generique_de_jeu_videos_staff_person = _generique_de_jeu_videos_staff_people(:one)
  end

  test "visiting the index" do
    visit _generique_de_jeu_videos_staff_people_url
    assert_selector "h1", text: "Generique de jeu videos staff people"
  end

  test "should create generique de jeu videos staff person" do
    visit _generique_de_jeu_videos_staff_people_url
    click_on "New generique de jeu videos staff person"

    fill_in "Name", with: @_generique_de_jeu_videos_staff_person.name
    click_on "Create Generique de jeu videos staff person"

    assert_text "Generique de jeu videos staff person was successfully created"
    click_on "Back"
  end

  test "should update Generique de jeu videos staff person" do
    visit _generique_de_jeu_videos_staff_person_url(@_generique_de_jeu_videos_staff_person)
    click_on "Edit this generique de jeu videos staff person", match: :first

    fill_in "Name", with: @_generique_de_jeu_videos_staff_person.name
    click_on "Update Generique de jeu videos staff person"

    assert_text "Generique de jeu videos staff person was successfully updated"
    click_on "Back"
  end

  test "should destroy Generique de jeu videos staff person" do
    visit _generique_de_jeu_videos_staff_person_url(@_generique_de_jeu_videos_staff_person)
    click_on "Destroy this generique de jeu videos staff person", match: :first

    assert_text "Generique de jeu videos staff person was successfully destroyed"
  end
end
