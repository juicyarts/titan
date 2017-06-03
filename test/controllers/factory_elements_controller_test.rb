require 'test_helper'

class FactoryElementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @factory_element = factory_elements(:one)
  end

  test "should get index" do
    get factory_elements_url, as: :json
    assert_response :success
  end

  test "should create factory_element" do
    assert_difference('FactoryElement.count') do
      post factory_elements_url, params: { factory_element: { branch_id: @factory_element.branch_id, name: @factory_element.name, state: @factory_element.state } }, as: :json
    end

    assert_response 201
  end

  test "should show factory_element" do
    get factory_element_url(@factory_element), as: :json
    assert_response :success
  end

  test "should update factory_element" do
    patch factory_element_url(@factory_element), params: { factory_element: { branch_id: @factory_element.branch_id, name: @factory_element.name, state: @factory_element.state } }, as: :json
    assert_response 200
  end

  test "should destroy factory_element" do
    assert_difference('FactoryElement.count', -1) do
      delete factory_element_url(@factory_element), as: :json
    end

    assert_response 204
  end
end
