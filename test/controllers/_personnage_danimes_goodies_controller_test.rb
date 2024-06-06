require "test_helper"

class PersonnageDanimesGoodiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_danimes_goody = _personnage_danimes_goodies(:one)
  end

  test "should get index" do
    get _personnage_danimes_goodies_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_danimes_goody_url
    assert_response :success
  end

  test "should create _personnage_danimes_goody" do
    assert_difference("PersonnageDanimesGoody.count") do
      post _personnage_danimes_goodies_url, params: { _personnage_danimes_goody: { name: @_personnage_danimes_goody.name } }
    end

    assert_redirected_to _personnage_danimes_goody_url(PersonnageDanimesGoody.last)
  end

  test "should show _personnage_danimes_goody" do
    get _personnage_danimes_goody_url(@_personnage_danimes_goody)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_danimes_goody_url(@_personnage_danimes_goody)
    assert_response :success
  end

  test "should update _personnage_danimes_goody" do
    patch _personnage_danimes_goody_url(@_personnage_danimes_goody), params: { _personnage_danimes_goody: { name: @_personnage_danimes_goody.name } }
    assert_redirected_to _personnage_danimes_goody_url(@_personnage_danimes_goody)
  end

  test "should destroy _personnage_danimes_goody" do
    assert_difference("PersonnageDanimesGoody.count", -1) do
      delete _personnage_danimes_goody_url(@_personnage_danimes_goody)
    end

    assert_redirected_to _personnage_danimes_goodies_url
  end
end
