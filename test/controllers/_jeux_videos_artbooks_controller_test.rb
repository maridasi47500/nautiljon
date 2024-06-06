require "test_helper"

class JeuxVideosArtbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_artbook = _jeux_videos_artbooks(:one)
  end

  test "should get index" do
    get _jeux_videos_artbooks_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_artbook_url
    assert_response :success
  end

  test "should create _jeux_videos_artbook" do
    assert_difference("JeuxVideosArtbook.count") do
      post _jeux_videos_artbooks_url, params: { _jeux_videos_artbook: { name: @_jeux_videos_artbook.name } }
    end

    assert_redirected_to _jeux_videos_artbook_url(JeuxVideosArtbook.last)
  end

  test "should show _jeux_videos_artbook" do
    get _jeux_videos_artbook_url(@_jeux_videos_artbook)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_artbook_url(@_jeux_videos_artbook)
    assert_response :success
  end

  test "should update _jeux_videos_artbook" do
    patch _jeux_videos_artbook_url(@_jeux_videos_artbook), params: { _jeux_videos_artbook: { name: @_jeux_videos_artbook.name } }
    assert_redirected_to _jeux_videos_artbook_url(@_jeux_videos_artbook)
  end

  test "should destroy _jeux_videos_artbook" do
    assert_difference("JeuxVideosArtbook.count", -1) do
      delete _jeux_videos_artbook_url(@_jeux_videos_artbook)
    end

    assert_redirected_to _jeux_videos_artbooks_url
  end
end
