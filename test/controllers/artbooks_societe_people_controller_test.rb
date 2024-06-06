require "test_helper"

class ArtbooksSocietePeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_societe_person = artbooks_societe_people(:one)
  end

  test "should get index" do
    get artbooks_societe_people_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_societe_person_url
    assert_response :success
  end

  test "should create artbooks_societe_person" do
    assert_difference("ArtbooksSocietePerson.count") do
      post artbooks_societe_people_url, params: { artbooks_societe_person: { name: @artbooks_societe_person.name } }
    end

    assert_redirected_to artbooks_societe_person_url(ArtbooksSocietePerson.last)
  end

  test "should show artbooks_societe_person" do
    get artbooks_societe_person_url(@artbooks_societe_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_societe_person_url(@artbooks_societe_person)
    assert_response :success
  end

  test "should update artbooks_societe_person" do
    patch artbooks_societe_person_url(@artbooks_societe_person), params: { artbooks_societe_person: { name: @artbooks_societe_person.name } }
    assert_redirected_to artbooks_societe_person_url(@artbooks_societe_person)
  end

  test "should destroy artbooks_societe_person" do
    assert_difference("ArtbooksSocietePerson.count", -1) do
      delete artbooks_societe_person_url(@artbooks_societe_person)
    end

    assert_redirected_to artbooks_societe_people_url
  end
end
