# frozen_string_literal: true

require 'test_helper'

class BranchesRoutesTest < ActionDispatch::IntegrationTest
  test 'branch list' do
    assert_routing '/branches', controller: 'branches', action: 'index'
  end

  test 'single branch' do
    assert_routing '/branches/1', controller: 'branches', action: 'show', id: '1'
  end
end
