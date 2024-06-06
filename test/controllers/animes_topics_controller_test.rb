require "test_helper"

class AnimesTopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_topic = animes_topics(:one)
  end

  test "should get index" do
    get animes_topics_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_topic_url
    assert_response :success
  end

  test "should create animes_topic" do
    assert_difference("AnimesTopic.count") do
      post animes_topics_url, params: { animes_topic: { name: @animes_topic.name } }
    end

    assert_redirected_to animes_topic_url(AnimesTopic.last)
  end

  test "should show animes_topic" do
    get animes_topic_url(@animes_topic)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_topic_url(@animes_topic)
    assert_response :success
  end

  test "should update animes_topic" do
    patch animes_topic_url(@animes_topic), params: { animes_topic: { name: @animes_topic.name } }
    assert_redirected_to animes_topic_url(@animes_topic)
  end

  test "should destroy animes_topic" do
    assert_difference("AnimesTopic.count", -1) do
      delete animes_topic_url(@animes_topic)
    end

    assert_redirected_to animes_topics_url
  end
end
