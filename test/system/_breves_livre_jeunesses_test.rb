require "application_system_test_case"

class BrevesLivreJeunessesTest < ApplicationSystemTestCase
  setup do
    @_breves_livre_jeuness = _breves_livre_jeunesses(:one)
  end

  test "visiting the index" do
    visit _breves_livre_jeunesses_url
    assert_selector "h1", text: "Breves livre jeunesses"
  end

  test "should create breves livre jeunesse" do
    visit _breves_livre_jeunesses_url
    click_on "New breves livre jeunesse"

    fill_in "Name", with: @_breves_livre_jeuness.name
    click_on "Create Breves livre jeunesse"

    assert_text "Breves livre jeunesse was successfully created"
    click_on "Back"
  end

  test "should update Breves livre jeunesse" do
    visit _breves_livre_jeuness_url(@_breves_livre_jeuness)
    click_on "Edit this breves livre jeunesse", match: :first

    fill_in "Name", with: @_breves_livre_jeuness.name
    click_on "Update Breves livre jeunesse"

    assert_text "Breves livre jeunesse was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves livre jeunesse" do
    visit _breves_livre_jeuness_url(@_breves_livre_jeuness)
    click_on "Destroy this breves livre jeunesse", match: :first

    assert_text "Breves livre jeunesse was successfully destroyed"
  end
end
