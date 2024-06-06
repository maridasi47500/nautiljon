require "test_helper"

class MangasStaffPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_staff_person = _mangas_staff_people(:one)
  end

  test "should get index" do
    get _mangas_staff_people_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_staff_person_url
    assert_response :success
  end

  test "should create _mangas_staff_person" do
    assert_difference("MangasStaffPerson.count") do
      post _mangas_staff_people_url, params: { _mangas_staff_person: { name: @_mangas_staff_person.name } }
    end

    assert_redirected_to _mangas_staff_person_url(MangasStaffPerson.last)
  end

  test "should show _mangas_staff_person" do
    get _mangas_staff_person_url(@_mangas_staff_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_staff_person_url(@_mangas_staff_person)
    assert_response :success
  end

  test "should update _mangas_staff_person" do
    patch _mangas_staff_person_url(@_mangas_staff_person), params: { _mangas_staff_person: { name: @_mangas_staff_person.name } }
    assert_redirected_to _mangas_staff_person_url(@_mangas_staff_person)
  end

  test "should destroy _mangas_staff_person" do
    assert_difference("MangasStaffPerson.count", -1) do
      delete _mangas_staff_person_url(@_mangas_staff_person)
    end

    assert_redirected_to _mangas_staff_people_url
  end
end
