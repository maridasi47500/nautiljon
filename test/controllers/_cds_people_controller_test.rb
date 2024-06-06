require "test_helper"

class CdsPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_person = _cds_people(:one)
  end

  test "should get index" do
    get _cds_people_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_person_url
    assert_response :success
  end

  test "should create _cds_person" do
    assert_difference("CdsPerson.count") do
      post _cds_people_url, params: { _cds_person: { name: @_cds_person.name } }
    end

    assert_redirected_to _cds_person_url(CdsPerson.last)
  end

  test "should show _cds_person" do
    get _cds_person_url(@_cds_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_person_url(@_cds_person)
    assert_response :success
  end

  test "should update _cds_person" do
    patch _cds_person_url(@_cds_person), params: { _cds_person: { name: @_cds_person.name } }
    assert_redirected_to _cds_person_url(@_cds_person)
  end

  test "should destroy _cds_person" do
    assert_difference("CdsPerson.count", -1) do
      delete _cds_person_url(@_cds_person)
    end

    assert_redirected_to _cds_people_url
  end
end
