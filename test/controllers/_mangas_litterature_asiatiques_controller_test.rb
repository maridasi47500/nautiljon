require "test_helper"

class MangasLitteratureAsiatiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_litterature_asiatique = _mangas_litterature_asiatiques(:one)
  end

  test "should get index" do
    get _mangas_litterature_asiatiques_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_litterature_asiatique_url
    assert_response :success
  end

  test "should create _mangas_litterature_asiatique" do
    assert_difference("MangasLitteratureAsiatique.count") do
      post _mangas_litterature_asiatiques_url, params: { _mangas_litterature_asiatique: { name: @_mangas_litterature_asiatique.name } }
    end

    assert_redirected_to _mangas_litterature_asiatique_url(MangasLitteratureAsiatique.last)
  end

  test "should show _mangas_litterature_asiatique" do
    get _mangas_litterature_asiatique_url(@_mangas_litterature_asiatique)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_litterature_asiatique_url(@_mangas_litterature_asiatique)
    assert_response :success
  end

  test "should update _mangas_litterature_asiatique" do
    patch _mangas_litterature_asiatique_url(@_mangas_litterature_asiatique), params: { _mangas_litterature_asiatique: { name: @_mangas_litterature_asiatique.name } }
    assert_redirected_to _mangas_litterature_asiatique_url(@_mangas_litterature_asiatique)
  end

  test "should destroy _mangas_litterature_asiatique" do
    assert_difference("MangasLitteratureAsiatique.count", -1) do
      delete _mangas_litterature_asiatique_url(@_mangas_litterature_asiatique)
    end

    assert_redirected_to _mangas_litterature_asiatiques_url
  end
end
