require "test_helper"

class LightNovelsStaffPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_staff_person = _light_novels_staff_people(:one)
  end

  test "should get index" do
    get _light_novels_staff_people_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_staff_person_url
    assert_response :success
  end

  test "should create _light_novels_staff_person" do
    assert_difference("LightNovelsStaffPerson.count") do
      post _light_novels_staff_people_url, params: { _light_novels_staff_person: { name: @_light_novels_staff_person.name } }
    end

    assert_redirected_to _light_novels_staff_person_url(LightNovelsStaffPerson.last)
  end

  test "should show _light_novels_staff_person" do
    get _light_novels_staff_person_url(@_light_novels_staff_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_staff_person_url(@_light_novels_staff_person)
    assert_response :success
  end

  test "should update _light_novels_staff_person" do
    patch _light_novels_staff_person_url(@_light_novels_staff_person), params: { _light_novels_staff_person: { name: @_light_novels_staff_person.name } }
    assert_redirected_to _light_novels_staff_person_url(@_light_novels_staff_person)
  end

  test "should destroy _light_novels_staff_person" do
    assert_difference("LightNovelsStaffPerson.count", -1) do
      delete _light_novels_staff_person_url(@_light_novels_staff_person)
    end

    assert_redirected_to _light_novels_staff_people_url
  end
end
