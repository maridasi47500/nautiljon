require "test_helper"

class AnimesStaffPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_staff_person = animes_staff_people(:one)
  end

  test "should get index" do
    get animes_staff_people_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_staff_person_url
    assert_response :success
  end

  test "should create animes_staff_person" do
    assert_difference("AnimesStaffPerson.count") do
      post animes_staff_people_url, params: { animes_staff_person: { name: @animes_staff_person.name } }
    end

    assert_redirected_to animes_staff_person_url(AnimesStaffPerson.last)
  end

  test "should show animes_staff_person" do
    get animes_staff_person_url(@animes_staff_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_staff_person_url(@animes_staff_person)
    assert_response :success
  end

  test "should update animes_staff_person" do
    patch animes_staff_person_url(@animes_staff_person), params: { animes_staff_person: { name: @animes_staff_person.name } }
    assert_redirected_to animes_staff_person_url(@animes_staff_person)
  end

  test "should destroy animes_staff_person" do
    assert_difference("AnimesStaffPerson.count", -1) do
      delete animes_staff_person_url(@animes_staff_person)
    end

    assert_redirected_to animes_staff_people_url
  end
end
