require "test_helper"

class PhotobooksPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_person = _photobooks_people(:one)
  end

  test "should get index" do
    get _photobooks_people_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_person_url
    assert_response :success
  end

  test "should create _photobooks_person" do
    assert_difference("PhotobooksPerson.count") do
      post _photobooks_people_url, params: { _photobooks_person: { name: @_photobooks_person.name } }
    end

    assert_redirected_to _photobooks_person_url(PhotobooksPerson.last)
  end

  test "should show _photobooks_person" do
    get _photobooks_person_url(@_photobooks_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_person_url(@_photobooks_person)
    assert_response :success
  end

  test "should update _photobooks_person" do
    patch _photobooks_person_url(@_photobooks_person), params: { _photobooks_person: { name: @_photobooks_person.name } }
    assert_redirected_to _photobooks_person_url(@_photobooks_person)
  end

  test "should destroy _photobooks_person" do
    assert_difference("PhotobooksPerson.count", -1) do
      delete _photobooks_person_url(@_photobooks_person)
    end

    assert_redirected_to _photobooks_people_url
  end
end
