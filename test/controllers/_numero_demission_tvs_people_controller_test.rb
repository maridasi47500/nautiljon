require "test_helper"

class NumeroDemissionTvsPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_numero_demission_tvs_person = _numero_demission_tvs_people(:one)
  end

  test "should get index" do
    get _numero_demission_tvs_people_url
    assert_response :success
  end

  test "should get new" do
    get new__numero_demission_tvs_person_url
    assert_response :success
  end

  test "should create _numero_demission_tvs_person" do
    assert_difference("NumeroDemissionTvsPerson.count") do
      post _numero_demission_tvs_people_url, params: { _numero_demission_tvs_person: { name: @_numero_demission_tvs_person.name } }
    end

    assert_redirected_to _numero_demission_tvs_person_url(NumeroDemissionTvsPerson.last)
  end

  test "should show _numero_demission_tvs_person" do
    get _numero_demission_tvs_person_url(@_numero_demission_tvs_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__numero_demission_tvs_person_url(@_numero_demission_tvs_person)
    assert_response :success
  end

  test "should update _numero_demission_tvs_person" do
    patch _numero_demission_tvs_person_url(@_numero_demission_tvs_person), params: { _numero_demission_tvs_person: { name: @_numero_demission_tvs_person.name } }
    assert_redirected_to _numero_demission_tvs_person_url(@_numero_demission_tvs_person)
  end

  test "should destroy _numero_demission_tvs_person" do
    assert_difference("NumeroDemissionTvsPerson.count", -1) do
      delete _numero_demission_tvs_person_url(@_numero_demission_tvs_person)
    end

    assert_redirected_to _numero_demission_tvs_people_url
  end
end
