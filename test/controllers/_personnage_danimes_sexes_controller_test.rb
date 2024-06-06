require "test_helper"

class PersonnageDanimesSexesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_danimes_sex = _personnage_danimes_sexes(:one)
  end

  test "should get index" do
    get _personnage_danimes_sexes_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_danimes_sex_url
    assert_response :success
  end

  test "should create _personnage_danimes_sex" do
    assert_difference("PersonnageDanimesSexe.count") do
      post _personnage_danimes_sexes_url, params: { _personnage_danimes_sex: { name: @_personnage_danimes_sex.name } }
    end

    assert_redirected_to _personnage_danimes_sex_url(PersonnageDanimesSexe.last)
  end

  test "should show _personnage_danimes_sex" do
    get _personnage_danimes_sex_url(@_personnage_danimes_sex)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_danimes_sex_url(@_personnage_danimes_sex)
    assert_response :success
  end

  test "should update _personnage_danimes_sex" do
    patch _personnage_danimes_sex_url(@_personnage_danimes_sex), params: { _personnage_danimes_sex: { name: @_personnage_danimes_sex.name } }
    assert_redirected_to _personnage_danimes_sex_url(@_personnage_danimes_sex)
  end

  test "should destroy _personnage_danimes_sex" do
    assert_difference("PersonnageDanimesSexe.count", -1) do
      delete _personnage_danimes_sex_url(@_personnage_danimes_sex)
    end

    assert_redirected_to _personnage_danimes_sexes_url
  end
end
