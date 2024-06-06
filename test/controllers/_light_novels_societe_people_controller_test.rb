require "test_helper"

class LightNovelsSocietePeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_societe_person = _light_novels_societe_people(:one)
  end

  test "should get index" do
    get _light_novels_societe_people_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_societe_person_url
    assert_response :success
  end

  test "should create _light_novels_societe_person" do
    assert_difference("LightNovelsSocietePerson.count") do
      post _light_novels_societe_people_url, params: { _light_novels_societe_person: { name: @_light_novels_societe_person.name } }
    end

    assert_redirected_to _light_novels_societe_person_url(LightNovelsSocietePerson.last)
  end

  test "should show _light_novels_societe_person" do
    get _light_novels_societe_person_url(@_light_novels_societe_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_societe_person_url(@_light_novels_societe_person)
    assert_response :success
  end

  test "should update _light_novels_societe_person" do
    patch _light_novels_societe_person_url(@_light_novels_societe_person), params: { _light_novels_societe_person: { name: @_light_novels_societe_person.name } }
    assert_redirected_to _light_novels_societe_person_url(@_light_novels_societe_person)
  end

  test "should destroy _light_novels_societe_person" do
    assert_difference("LightNovelsSocietePerson.count", -1) do
      delete _light_novels_societe_person_url(@_light_novels_societe_person)
    end

    assert_redirected_to _light_novels_societe_people_url
  end
end
