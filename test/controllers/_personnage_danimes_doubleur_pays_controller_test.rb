require "test_helper"

class PersonnageDanimesDoubleurPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_danimes_doubleur_pay = _personnage_danimes_doubleur_pays(:one)
  end

  test "should get index" do
    get _personnage_danimes_doubleur_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_danimes_doubleur_pay_url
    assert_response :success
  end

  test "should create _personnage_danimes_doubleur_pay" do
    assert_difference("PersonnageDanimesDoubleurPay.count") do
      post _personnage_danimes_doubleur_pays_url, params: { _personnage_danimes_doubleur_pay: { name: @_personnage_danimes_doubleur_pay.name } }
    end

    assert_redirected_to _personnage_danimes_doubleur_pay_url(PersonnageDanimesDoubleurPay.last)
  end

  test "should show _personnage_danimes_doubleur_pay" do
    get _personnage_danimes_doubleur_pay_url(@_personnage_danimes_doubleur_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_danimes_doubleur_pay_url(@_personnage_danimes_doubleur_pay)
    assert_response :success
  end

  test "should update _personnage_danimes_doubleur_pay" do
    patch _personnage_danimes_doubleur_pay_url(@_personnage_danimes_doubleur_pay), params: { _personnage_danimes_doubleur_pay: { name: @_personnage_danimes_doubleur_pay.name } }
    assert_redirected_to _personnage_danimes_doubleur_pay_url(@_personnage_danimes_doubleur_pay)
  end

  test "should destroy _personnage_danimes_doubleur_pay" do
    assert_difference("PersonnageDanimesDoubleurPay.count", -1) do
      delete _personnage_danimes_doubleur_pay_url(@_personnage_danimes_doubleur_pay)
    end

    assert_redirected_to _personnage_danimes_doubleur_pays_url
  end
end
