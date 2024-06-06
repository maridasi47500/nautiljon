require "test_helper"

class PersonnalitesSexesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_sex = _personnalites_sexes(:one)
  end

  test "should get index" do
    get _personnalites_sexes_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_sex_url
    assert_response :success
  end

  test "should create _personnalites_sex" do
    assert_difference("PersonnalitesSexe.count") do
      post _personnalites_sexes_url, params: { _personnalites_sex: { name: @_personnalites_sex.name } }
    end

    assert_redirected_to _personnalites_sex_url(PersonnalitesSexe.last)
  end

  test "should show _personnalites_sex" do
    get _personnalites_sex_url(@_personnalites_sex)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_sex_url(@_personnalites_sex)
    assert_response :success
  end

  test "should update _personnalites_sex" do
    patch _personnalites_sex_url(@_personnalites_sex), params: { _personnalites_sex: { name: @_personnalites_sex.name } }
    assert_redirected_to _personnalites_sex_url(@_personnalites_sex)
  end

  test "should destroy _personnalites_sex" do
    assert_difference("PersonnalitesSexe.count", -1) do
      delete _personnalites_sex_url(@_personnalites_sex)
    end

    assert_redirected_to _personnalites_sexes_url
  end
end
