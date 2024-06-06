require "test_helper"

class EvenementsPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evenements_person = evenements_people(:one)
  end

  test "should get index" do
    get evenements_people_url
    assert_response :success
  end

  test "should get new" do
    get new_evenements_person_url
    assert_response :success
  end

  test "should create evenements_person" do
    assert_difference("EvenementsPerson.count") do
      post evenements_people_url, params: { evenements_person: { name: @evenements_person.name } }
    end

    assert_redirected_to evenements_person_url(EvenementsPerson.last)
  end

  test "should show evenements_person" do
    get evenements_person_url(@evenements_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_evenements_person_url(@evenements_person)
    assert_response :success
  end

  test "should update evenements_person" do
    patch evenements_person_url(@evenements_person), params: { evenements_person: { name: @evenements_person.name } }
    assert_redirected_to evenements_person_url(@evenements_person)
  end

  test "should destroy evenements_person" do
    assert_difference("EvenementsPerson.count", -1) do
      delete evenements_person_url(@evenements_person)
    end

    assert_redirected_to evenements_people_url
  end
end
