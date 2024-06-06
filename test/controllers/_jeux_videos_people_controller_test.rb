require "test_helper"

class JeuxVideosPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_person = _jeux_videos_people(:one)
  end

  test "should get index" do
    get _jeux_videos_people_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_person_url
    assert_response :success
  end

  test "should create _jeux_videos_person" do
    assert_difference("JeuxVideosPerson.count") do
      post _jeux_videos_people_url, params: { _jeux_videos_person: { name: @_jeux_videos_person.name } }
    end

    assert_redirected_to _jeux_videos_person_url(JeuxVideosPerson.last)
  end

  test "should show _jeux_videos_person" do
    get _jeux_videos_person_url(@_jeux_videos_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_person_url(@_jeux_videos_person)
    assert_response :success
  end

  test "should update _jeux_videos_person" do
    patch _jeux_videos_person_url(@_jeux_videos_person), params: { _jeux_videos_person: { name: @_jeux_videos_person.name } }
    assert_redirected_to _jeux_videos_person_url(@_jeux_videos_person)
  end

  test "should destroy _jeux_videos_person" do
    assert_difference("JeuxVideosPerson.count", -1) do
      delete _jeux_videos_person_url(@_jeux_videos_person)
    end

    assert_redirected_to _jeux_videos_people_url
  end
end
