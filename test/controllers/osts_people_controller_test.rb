require "test_helper"

class OstsPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_person = osts_people(:one)
  end

  test "should get index" do
    get osts_people_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_person_url
    assert_response :success
  end

  test "should create osts_person" do
    assert_difference("OstsPerson.count") do
      post osts_people_url, params: { osts_person: { name: @osts_person.name } }
    end

    assert_redirected_to osts_person_url(OstsPerson.last)
  end

  test "should show osts_person" do
    get osts_person_url(@osts_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_person_url(@osts_person)
    assert_response :success
  end

  test "should update osts_person" do
    patch osts_person_url(@osts_person), params: { osts_person: { name: @osts_person.name } }
    assert_redirected_to osts_person_url(@osts_person)
  end

  test "should destroy osts_person" do
    assert_difference("OstsPerson.count", -1) do
      delete osts_person_url(@osts_person)
    end

    assert_redirected_to osts_people_url
  end
end
