# frozen_string_literal: true

require 'test_helper'

class FactoryElementsRoutesTest < ActionDispatch::IntegrationTest
  test 'factory_element list' do
    assert_routing '/factory_elements', controller: 'factory_elements', action: 'index'
  end

  test 'single factory_element' do
    assert_routing '/factory_elements/1', controller: 'factory_elements', action: 'show', id: '1'
  end
end
