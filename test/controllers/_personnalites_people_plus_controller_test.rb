require "test_helper"

class PersonnalitesPeoplePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_people_plu = _personnalites_people_plus(:one)
  end

  test "should get index" do
    get _personnalites_people_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_people_plu_url
    assert_response :success
  end

  test "should create _personnalites_people_plu" do
    assert_difference("PersonnalitesPeoplePlu.count") do
      post _personnalites_people_plus_url, params: { _personnalites_people_plu: { name: @_personnalites_people_plu.name } }
    end

    assert_redirected_to _personnalites_people_plu_url(PersonnalitesPeoplePlu.last)
  end

  test "should show _personnalites_people_plu" do
    get _personnalites_people_plu_url(@_personnalites_people_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_people_plu_url(@_personnalites_people_plu)
    assert_response :success
  end

  test "should update _personnalites_people_plu" do
    patch _personnalites_people_plu_url(@_personnalites_people_plu), params: { _personnalites_people_plu: { name: @_personnalites_people_plu.name } }
    assert_redirected_to _personnalites_people_plu_url(@_personnalites_people_plu)
  end

  test "should destroy _personnalites_people_plu" do
    assert_difference("PersonnalitesPeoplePlu.count", -1) do
      delete _personnalites_people_plu_url(@_personnalites_people_plu)
    end

    assert_redirected_to _personnalites_people_plus_url
  end
end
