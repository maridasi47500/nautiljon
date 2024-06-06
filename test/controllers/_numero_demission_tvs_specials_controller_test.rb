require "test_helper"

class NumeroDemissionTvsSpecialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_numero_demission_tvs_special = _numero_demission_tvs_specials(:one)
  end

  test "should get index" do
    get _numero_demission_tvs_specials_url
    assert_response :success
  end

  test "should get new" do
    get new__numero_demission_tvs_special_url
    assert_response :success
  end

  test "should create _numero_demission_tvs_special" do
    assert_difference("NumeroDemissionTvsSpecial.count") do
      post _numero_demission_tvs_specials_url, params: { _numero_demission_tvs_special: { name: @_numero_demission_tvs_special.name } }
    end

    assert_redirected_to _numero_demission_tvs_special_url(NumeroDemissionTvsSpecial.last)
  end

  test "should show _numero_demission_tvs_special" do
    get _numero_demission_tvs_special_url(@_numero_demission_tvs_special)
    assert_response :success
  end

  test "should get edit" do
    get edit__numero_demission_tvs_special_url(@_numero_demission_tvs_special)
    assert_response :success
  end

  test "should update _numero_demission_tvs_special" do
    patch _numero_demission_tvs_special_url(@_numero_demission_tvs_special), params: { _numero_demission_tvs_special: { name: @_numero_demission_tvs_special.name } }
    assert_redirected_to _numero_demission_tvs_special_url(@_numero_demission_tvs_special)
  end

  test "should destroy _numero_demission_tvs_special" do
    assert_difference("NumeroDemissionTvsSpecial.count", -1) do
      delete _numero_demission_tvs_special_url(@_numero_demission_tvs_special)
    end

    assert_redirected_to _numero_demission_tvs_specials_url
  end
end
