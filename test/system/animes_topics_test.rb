require "application_system_test_case"

class AnimesTopicsTest < ApplicationSystemTestCase
  setup do
    @animes_topic = animes_topics(:one)
  end

  test "visiting the index" do
    visit animes_topics_url
    assert_selector "h1", text: "Animes topics"
  end

  test "should create animes topic" do
    visit animes_topics_url
    click_on "New animes topic"

    fill_in "Name", with: @animes_topic.name
    click_on "Create Animes topic"

    assert_text "Animes topic was successfully created"
    click_on "Back"
  end

  test "should update Animes topic" do
    visit animes_topic_url(@animes_topic)
    click_on "Edit this animes topic", match: :first

    fill_in "Name", with: @animes_topic.name
    click_on "Update Animes topic"

    assert_text "Animes topic was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes topic" do
    visit animes_topic_url(@animes_topic)
    click_on "Destroy this animes topic", match: :first

    assert_text "Animes topic was successfully destroyed"
  end
end
