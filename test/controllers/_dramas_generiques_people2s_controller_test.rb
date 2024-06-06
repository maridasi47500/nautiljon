require "test_helper"

class DramasGeneriquesPeople2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_generiques_people2 = _dramas_generiques_people2s(:one)
  end

  test "should get index" do
    get _dramas_generiques_people2s_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_generiques_people2_url
    assert_response :success
  end

  test "should create _dramas_generiques_people2" do
    assert_difference("DramasGeneriquesPeople2.count") do
      post _dramas_generiques_people2s_url, params: { _dramas_generiques_people2: { name: @_dramas_generiques_people2.name } }
    end

    assert_redirected_to _dramas_generiques_people2_url(DramasGeneriquesPeople2.last)
  end

  test "should show _dramas_generiques_people2" do
    get _dramas_generiques_people2_url(@_dramas_generiques_people2)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_generiques_people2_url(@_dramas_generiques_people2)
    assert_response :success
  end

  test "should update _dramas_generiques_people2" do
    patch _dramas_generiques_people2_url(@_dramas_generiques_people2), params: { _dramas_generiques_people2: { name: @_dramas_generiques_people2.name } }
    assert_redirected_to _dramas_generiques_people2_url(@_dramas_generiques_people2)
  end

  test "should destroy _dramas_generiques_people2" do
    assert_difference("DramasGeneriquesPeople2.count", -1) do
      delete _dramas_generiques_people2_url(@_dramas_generiques_people2)
    end

    assert_redirected_to _dramas_generiques_people2s_url
  end
end
