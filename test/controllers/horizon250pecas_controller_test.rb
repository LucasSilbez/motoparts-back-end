require "test_helper"

class Horizon250pecasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horizon250peca = horizon250pecas(:one)
  end

  test "should get index" do
    get horizon250pecas_url, as: :json
    assert_response :success
  end

  test "should create horizon250peca" do
    assert_difference("Horizon250peca.count") do
      post horizon250pecas_url, params: { horizon250peca: { ano: @horizon250peca.ano, compatibilidade: @horizon250peca.compatibilidade, img_motocompativel: @horizon250peca.img_motocompativel, motocompativel: @horizon250peca.motocompativel, nomepeca: @horizon250peca.nomepeca } }, as: :json
    end

    assert_response :created
  end

  test "should show horizon250peca" do
    get horizon250peca_url(@horizon250peca), as: :json
    assert_response :success
  end

  test "should update horizon250peca" do
    patch horizon250peca_url(@horizon250peca), params: { horizon250peca: { ano: @horizon250peca.ano, compatibilidade: @horizon250peca.compatibilidade, img_motocompativel: @horizon250peca.img_motocompativel, motocompativel: @horizon250peca.motocompativel, nomepeca: @horizon250peca.nomepeca } }, as: :json
    assert_response :success
  end

  test "should destroy horizon250peca" do
    assert_difference("Horizon250peca.count", -1) do
      delete horizon250peca_url(@horizon250peca), as: :json
    end

    assert_response :no_content
  end
end
