require "application_system_test_case"

class VideosTest < ApplicationSystemTestCase
  setup do
    @_video = _videos(:one)
  end

  test "visiting the index" do
    visit _videos_url
    assert_selector "h1", text: "Videos"
  end

  test "should create video" do
    visit _videos_url
    click_on "New video"

    fill_in "Videos id cat", with: @_video._videos_id_cat_id
    fill_in "Tags", with: @_video.tags
    fill_in "Titre", with: @_video.titre
    fill_in "Url", with: @_video.url
    click_on "Create Video"

    assert_text "Video was successfully created"
    click_on "Back"
  end

  test "should update Video" do
    visit _video_url(@_video)
    click_on "Edit this video", match: :first

    fill_in "Videos id cat", with: @_video._videos_id_cat_id
    fill_in "Tags", with: @_video.tags
    fill_in "Titre", with: @_video.titre
    fill_in "Url", with: @_video.url
    click_on "Update Video"

    assert_text "Video was successfully updated"
    click_on "Back"
  end

  test "should destroy Video" do
    visit _video_url(@_video)
    click_on "Destroy this video", match: :first

    assert_text "Video was successfully destroyed"
  end
end
