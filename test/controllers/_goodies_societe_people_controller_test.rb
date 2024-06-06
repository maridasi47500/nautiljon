require "test_helper"

class GoodiesSocietePeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_societe_person = _goodies_societe_people(:one)
  end

  test "should get index" do
    get _goodies_societe_people_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_societe_person_url
    assert_response :success
  end

  test "should create _goodies_societe_person" do
    assert_difference("GoodiesSocietePerson.count") do
      post _goodies_societe_people_url, params: { _goodies_societe_person: { name: @_goodies_societe_person.name } }
    end

    assert_redirected_to _goodies_societe_person_url(GoodiesSocietePerson.last)
  end

  test "should show _goodies_societe_person" do
    get _goodies_societe_person_url(@_goodies_societe_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_societe_person_url(@_goodies_societe_person)
    assert_response :success
  end

  test "should update _goodies_societe_person" do
    patch _goodies_societe_person_url(@_goodies_societe_person), params: { _goodies_societe_person: { name: @_goodies_societe_person.name } }
    assert_redirected_to _goodies_societe_person_url(@_goodies_societe_person)
  end

  test "should destroy _goodies_societe_person" do
    assert_difference("GoodiesSocietePerson.count", -1) do
      delete _goodies_societe_person_url(@_goodies_societe_person)
    end

    assert_redirected_to _goodies_societe_people_url
  end
end
