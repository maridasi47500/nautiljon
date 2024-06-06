require "test_helper"

class DramasGeneriquesPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_generiques_person = _dramas_generiques_people(:one)
  end

  test "should get index" do
    get _dramas_generiques_people_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_generiques_person_url
    assert_response :success
  end

  test "should create _dramas_generiques_person" do
    assert_difference("DramasGeneriquesPerson.count") do
      post _dramas_generiques_people_url, params: { _dramas_generiques_person: { name: @_dramas_generiques_person.name } }
    end

    assert_redirected_to _dramas_generiques_person_url(DramasGeneriquesPerson.last)
  end

  test "should show _dramas_generiques_person" do
    get _dramas_generiques_person_url(@_dramas_generiques_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_generiques_person_url(@_dramas_generiques_person)
    assert_response :success
  end

  test "should update _dramas_generiques_person" do
    patch _dramas_generiques_person_url(@_dramas_generiques_person), params: { _dramas_generiques_person: { name: @_dramas_generiques_person.name } }
    assert_redirected_to _dramas_generiques_person_url(@_dramas_generiques_person)
  end

  test "should destroy _dramas_generiques_person" do
    assert_difference("DramasGeneriquesPerson.count", -1) do
      delete _dramas_generiques_person_url(@_dramas_generiques_person)
    end

    assert_redirected_to _dramas_generiques_people_url
  end
end
