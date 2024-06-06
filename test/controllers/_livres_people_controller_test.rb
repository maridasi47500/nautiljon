require "test_helper"

class LivresPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_person = _livres_people(:one)
  end

  test "should get index" do
    get _livres_people_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_person_url
    assert_response :success
  end

  test "should create _livres_person" do
    assert_difference("LivresPerson.count") do
      post _livres_people_url, params: { _livres_person: { name: @_livres_person.name } }
    end

    assert_redirected_to _livres_person_url(LivresPerson.last)
  end

  test "should show _livres_person" do
    get _livres_person_url(@_livres_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_person_url(@_livres_person)
    assert_response :success
  end

  test "should update _livres_person" do
    patch _livres_person_url(@_livres_person), params: { _livres_person: { name: @_livres_person.name } }
    assert_redirected_to _livres_person_url(@_livres_person)
  end

  test "should destroy _livres_person" do
    assert_difference("LivresPerson.count", -1) do
      delete _livres_person_url(@_livres_person)
    end

    assert_redirected_to _livres_people_url
  end
end
