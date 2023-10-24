require "test_helper"

class Horizon250sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horizon250 = horizon250s(:one)
  end

  test "should get index" do
    get horizon250s_url, as: :json
    assert_response :success
  end

  test "should create horizon250" do
    assert_difference("Horizon250.count") do
      post horizon250s_url, params: { horizon250: { ano: @horizon250.ano, img_moto: @horizon250.img_moto, marca: @horizon250.marca, nome: @horizon250.nome } }, as: :json
    end

    assert_response :created
  end

  test "should show horizon250" do
    get horizon250_url(@horizon250), as: :json
    assert_response :success
  end

  test "should update horizon250" do
    patch horizon250_url(@horizon250), params: { horizon250: { ano: @horizon250.ano, img_moto: @horizon250.img_moto, marca: @horizon250.marca, nome: @horizon250.nome } }, as: :json
    assert_response :success
  end

  test "should destroy horizon250" do
    assert_difference("Horizon250.count", -1) do
      delete horizon250_url(@horizon250), as: :json
    end

    assert_response :no_content
  end
end
