require "application_system_test_case"

class VideosIdCatsTest < ApplicationSystemTestCase
  setup do
    @_videos_id_cat = _videos_id_cats(:one)
  end

  test "visiting the index" do
    visit _videos_id_cats_url
    assert_selector "h1", text: "Videos id cats"
  end

  test "should create videos id cat" do
    visit _videos_id_cats_url
    click_on "New videos id cat"

    fill_in "Name", with: @_videos_id_cat.name
    click_on "Create Videos id cat"

    assert_text "Videos id cat was successfully created"
    click_on "Back"
  end

  test "should update Videos id cat" do
    visit _videos_id_cat_url(@_videos_id_cat)
    click_on "Edit this videos id cat", match: :first

    fill_in "Name", with: @_videos_id_cat.name
    click_on "Update Videos id cat"

    assert_text "Videos id cat was successfully updated"
    click_on "Back"
  end

  test "should destroy Videos id cat" do
    visit _videos_id_cat_url(@_videos_id_cat)
    click_on "Destroy this videos id cat", match: :first

    assert_text "Videos id cat was successfully destroyed"
  end
end
