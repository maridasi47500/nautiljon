require "application_system_test_case"

class JeuxVideosTopicsTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_topic = _jeux_videos_topics(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_topics_url
    assert_selector "h1", text: "Jeux videos topics"
  end

  test "should create jeux videos topic" do
    visit _jeux_videos_topics_url
    click_on "New jeux videos topic"

    fill_in "Name", with: @_jeux_videos_topic.name
    click_on "Create Jeux videos topic"

    assert_text "Jeux videos topic was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos topic" do
    visit _jeux_videos_topic_url(@_jeux_videos_topic)
    click_on "Edit this jeux videos topic", match: :first

    fill_in "Name", with: @_jeux_videos_topic.name
    click_on "Update Jeux videos topic"

    assert_text "Jeux videos topic was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos topic" do
    visit _jeux_videos_topic_url(@_jeux_videos_topic)
    click_on "Destroy this jeux videos topic", match: :first

    assert_text "Jeux videos topic was successfully destroyed"
  end
end
