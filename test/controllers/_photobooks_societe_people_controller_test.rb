require "test_helper"

class PhotobooksSocietePeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_societe_person = _photobooks_societe_people(:one)
  end

  test "should get index" do
    get _photobooks_societe_people_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_societe_person_url
    assert_response :success
  end

  test "should create _photobooks_societe_person" do
    assert_difference("PhotobooksSocietePerson.count") do
      post _photobooks_societe_people_url, params: { _photobooks_societe_person: { name: @_photobooks_societe_person.name } }
    end

    assert_redirected_to _photobooks_societe_person_url(PhotobooksSocietePerson.last)
  end

  test "should show _photobooks_societe_person" do
    get _photobooks_societe_person_url(@_photobooks_societe_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_societe_person_url(@_photobooks_societe_person)
    assert_response :success
  end

  test "should update _photobooks_societe_person" do
    patch _photobooks_societe_person_url(@_photobooks_societe_person), params: { _photobooks_societe_person: { name: @_photobooks_societe_person.name } }
    assert_redirected_to _photobooks_societe_person_url(@_photobooks_societe_person)
  end

  test "should destroy _photobooks_societe_person" do
    assert_difference("PhotobooksSocietePerson.count", -1) do
      delete _photobooks_societe_person_url(@_photobooks_societe_person)
    end

    assert_redirected_to _photobooks_societe_people_url
  end
end
