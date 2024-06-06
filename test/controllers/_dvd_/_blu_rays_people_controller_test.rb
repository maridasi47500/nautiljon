require "test_helper"

class Dvd::BluRaysPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_person = _dvd___blu_rays_people(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_people_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_person_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_person" do
    assert_difference("Dvd::BluRaysPerson.count") do
      post _dvd___blu_rays_people_url, params: { _dvd___blu_rays_person: { name: @_dvd___blu_rays_person.name } }
    end

    assert_redirected_to _dvd___blu_rays_person_url(Dvd::BluRaysPerson.last)
  end

  test "should show _dvd___blu_rays_person" do
    get _dvd___blu_rays_person_url(@_dvd___blu_rays_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_person_url(@_dvd___blu_rays_person)
    assert_response :success
  end

  test "should update _dvd___blu_rays_person" do
    patch _dvd___blu_rays_person_url(@_dvd___blu_rays_person), params: { _dvd___blu_rays_person: { name: @_dvd___blu_rays_person.name } }
    assert_redirected_to _dvd___blu_rays_person_url(@_dvd___blu_rays_person)
  end

  test "should destroy _dvd___blu_rays_person" do
    assert_difference("Dvd::BluRaysPerson.count", -1) do
      delete _dvd___blu_rays_person_url(@_dvd___blu_rays_person)
    end

    assert_redirected_to _dvd___blu_rays_people_url
  end
end
