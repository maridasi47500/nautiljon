require "test_helper"

class ArtbooksPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_person = artbooks_people(:one)
  end

  test "should get index" do
    get artbooks_people_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_person_url
    assert_response :success
  end

  test "should create artbooks_person" do
    assert_difference("ArtbooksPerson.count") do
      post artbooks_people_url, params: { artbooks_person: { name: @artbooks_person.name } }
    end

    assert_redirected_to artbooks_person_url(ArtbooksPerson.last)
  end

  test "should show artbooks_person" do
    get artbooks_person_url(@artbooks_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_person_url(@artbooks_person)
    assert_response :success
  end

  test "should update artbooks_person" do
    patch artbooks_person_url(@artbooks_person), params: { artbooks_person: { name: @artbooks_person.name } }
    assert_redirected_to artbooks_person_url(@artbooks_person)
  end

  test "should destroy artbooks_person" do
    assert_difference("ArtbooksPerson.count", -1) do
      delete artbooks_person_url(@artbooks_person)
    end

    assert_redirected_to artbooks_people_url
  end
end
