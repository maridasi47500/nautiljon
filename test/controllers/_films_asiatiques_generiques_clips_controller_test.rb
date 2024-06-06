require "test_helper"

class FilmsAsiatiquesGeneriquesClipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_generiques_clip = _films_asiatiques_generiques_clips(:one)
  end

  test "should get index" do
    get _films_asiatiques_generiques_clips_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_generiques_clip_url
    assert_response :success
  end

  test "should create _films_asiatiques_generiques_clip" do
    assert_difference("FilmsAsiatiquesGeneriquesClip.count") do
      post _films_asiatiques_generiques_clips_url, params: { _films_asiatiques_generiques_clip: { name: @_films_asiatiques_generiques_clip.name } }
    end

    assert_redirected_to _films_asiatiques_generiques_clip_url(FilmsAsiatiquesGeneriquesClip.last)
  end

  test "should show _films_asiatiques_generiques_clip" do
    get _films_asiatiques_generiques_clip_url(@_films_asiatiques_generiques_clip)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_generiques_clip_url(@_films_asiatiques_generiques_clip)
    assert_response :success
  end

  test "should update _films_asiatiques_generiques_clip" do
    patch _films_asiatiques_generiques_clip_url(@_films_asiatiques_generiques_clip), params: { _films_asiatiques_generiques_clip: { name: @_films_asiatiques_generiques_clip.name } }
    assert_redirected_to _films_asiatiques_generiques_clip_url(@_films_asiatiques_generiques_clip)
  end

  test "should destroy _films_asiatiques_generiques_clip" do
    assert_difference("FilmsAsiatiquesGeneriquesClip.count", -1) do
      delete _films_asiatiques_generiques_clip_url(@_films_asiatiques_generiques_clip)
    end

    assert_redirected_to _films_asiatiques_generiques_clips_url
  end
end
