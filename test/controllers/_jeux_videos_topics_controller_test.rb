require "test_helper"

class JeuxVideosTopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_topic = _jeux_videos_topics(:one)
  end

  test "should get index" do
    get _jeux_videos_topics_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_topic_url
    assert_response :success
  end

  test "should create _jeux_videos_topic" do
    assert_difference("JeuxVideosTopic.count") do
      post _jeux_videos_topics_url, params: { _jeux_videos_topic: { name: @_jeux_videos_topic.name } }
    end

    assert_redirected_to _jeux_videos_topic_url(JeuxVideosTopic.last)
  end

  test "should show _jeux_videos_topic" do
    get _jeux_videos_topic_url(@_jeux_videos_topic)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_topic_url(@_jeux_videos_topic)
    assert_response :success
  end

  test "should update _jeux_videos_topic" do
    patch _jeux_videos_topic_url(@_jeux_videos_topic), params: { _jeux_videos_topic: { name: @_jeux_videos_topic.name } }
    assert_redirected_to _jeux_videos_topic_url(@_jeux_videos_topic)
  end

  test "should destroy _jeux_videos_topic" do
    assert_difference("JeuxVideosTopic.count", -1) do
      delete _jeux_videos_topic_url(@_jeux_videos_topic)
    end

    assert_redirected_to _jeux_videos_topics_url
  end
end
