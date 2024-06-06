require "test_helper"

class JeuxVideosMangaPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_manga_plu = _jeux_videos_manga_plus(:one)
  end

  test "should get index" do
    get _jeux_videos_manga_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_manga_plu_url
    assert_response :success
  end

  test "should create _jeux_videos_manga_plu" do
    assert_difference("JeuxVideosMangaPlu.count") do
      post _jeux_videos_manga_plus_url, params: { _jeux_videos_manga_plu: { name: @_jeux_videos_manga_plu.name } }
    end

    assert_redirected_to _jeux_videos_manga_plu_url(JeuxVideosMangaPlu.last)
  end

  test "should show _jeux_videos_manga_plu" do
    get _jeux_videos_manga_plu_url(@_jeux_videos_manga_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_manga_plu_url(@_jeux_videos_manga_plu)
    assert_response :success
  end

  test "should update _jeux_videos_manga_plu" do
    patch _jeux_videos_manga_plu_url(@_jeux_videos_manga_plu), params: { _jeux_videos_manga_plu: { name: @_jeux_videos_manga_plu.name } }
    assert_redirected_to _jeux_videos_manga_plu_url(@_jeux_videos_manga_plu)
  end

  test "should destroy _jeux_videos_manga_plu" do
    assert_difference("JeuxVideosMangaPlu.count", -1) do
      delete _jeux_videos_manga_plu_url(@_jeux_videos_manga_plu)
    end

    assert_redirected_to _jeux_videos_manga_plus_url
  end
end
