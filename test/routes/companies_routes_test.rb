# frozen_string_literal: true

require 'test_helper'

class CompaniesRoutesTest < ActionDispatch::IntegrationTest
  test 'company list' do
    assert_routing '/companies', controller: 'companies', action: 'index'
  end

  test 'single company' do
    assert_routing '/companies/1', controller: 'companies', action: 'show', id: '1'
  end
end
