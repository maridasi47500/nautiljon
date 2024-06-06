require "test_helper"

class JeuxVideosDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_drama = _jeux_videos_dramas(:one)
  end

  test "should get index" do
    get _jeux_videos_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_drama_url
    assert_response :success
  end

  test "should create _jeux_videos_drama" do
    assert_difference("JeuxVideosDrama.count") do
      post _jeux_videos_dramas_url, params: { _jeux_videos_drama: { name: @_jeux_videos_drama.name } }
    end

    assert_redirected_to _jeux_videos_drama_url(JeuxVideosDrama.last)
  end

  test "should show _jeux_videos_drama" do
    get _jeux_videos_drama_url(@_jeux_videos_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_drama_url(@_jeux_videos_drama)
    assert_response :success
  end

  test "should update _jeux_videos_drama" do
    patch _jeux_videos_drama_url(@_jeux_videos_drama), params: { _jeux_videos_drama: { name: @_jeux_videos_drama.name } }
    assert_redirected_to _jeux_videos_drama_url(@_jeux_videos_drama)
  end

  test "should destroy _jeux_videos_drama" do
    assert_difference("JeuxVideosDrama.count", -1) do
      delete _jeux_videos_drama_url(@_jeux_videos_drama)
    end

    assert_redirected_to _jeux_videos_dramas_url
  end
end
