require "test_helper"

class DramasSocietePeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_societe_person = _dramas_societe_people(:one)
  end

  test "should get index" do
    get _dramas_societe_people_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_societe_person_url
    assert_response :success
  end

  test "should create _dramas_societe_person" do
    assert_difference("DramasSocietePerson.count") do
      post _dramas_societe_people_url, params: { _dramas_societe_person: { name: @_dramas_societe_person.name } }
    end

    assert_redirected_to _dramas_societe_person_url(DramasSocietePerson.last)
  end

  test "should show _dramas_societe_person" do
    get _dramas_societe_person_url(@_dramas_societe_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_societe_person_url(@_dramas_societe_person)
    assert_response :success
  end

  test "should update _dramas_societe_person" do
    patch _dramas_societe_person_url(@_dramas_societe_person), params: { _dramas_societe_person: { name: @_dramas_societe_person.name } }
    assert_redirected_to _dramas_societe_person_url(@_dramas_societe_person)
  end

  test "should destroy _dramas_societe_person" do
    assert_difference("DramasSocietePerson.count", -1) do
      delete _dramas_societe_person_url(@_dramas_societe_person)
    end

    assert_redirected_to _dramas_societe_people_url
  end
end
