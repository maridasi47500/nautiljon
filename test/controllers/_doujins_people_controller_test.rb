require "test_helper"

class DoujinsPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujins_person = _doujins_people(:one)
  end

  test "should get index" do
    get _doujins_people_url
    assert_response :success
  end

  test "should get new" do
    get new__doujins_person_url
    assert_response :success
  end

  test "should create _doujins_person" do
    assert_difference("DoujinsPerson.count") do
      post _doujins_people_url, params: { _doujins_person: { name: @_doujins_person.name } }
    end

    assert_redirected_to _doujins_person_url(DoujinsPerson.last)
  end

  test "should show _doujins_person" do
    get _doujins_person_url(@_doujins_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujins_person_url(@_doujins_person)
    assert_response :success
  end

  test "should update _doujins_person" do
    patch _doujins_person_url(@_doujins_person), params: { _doujins_person: { name: @_doujins_person.name } }
    assert_redirected_to _doujins_person_url(@_doujins_person)
  end

  test "should destroy _doujins_person" do
    assert_difference("DoujinsPerson.count", -1) do
      delete _doujins_person_url(@_doujins_person)
    end

    assert_redirected_to _doujins_people_url
  end
end
