# frozen_string_literal: true

ActiveRecord::Schema.define(version: 20_170_603_184_413) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'branches', force: :cascade do |t|
    t.string 'name'
    t.integer 'state'
    t.binary 'logo'
    t.bigint 'company_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_id'], name: 'index_branches_on_company_id'
  end

  create_table 'companies', force: :cascade do |t|
    t.string 'name'
    t.binary 'logo'
    t.string 'vat_nr'
    t.integer 'state'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'factory_elements', force: :cascade do |t|
    t.string 'name'
    t.integer 'state'
    t.bigint 'branch_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['branch_id'], name: 'index_factory_elements_on_branch_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'salutation'
    t.string 'academic_title'
    t.string 'first_name'
    t.string 'last_name'
    t.string 'company_name'
    t.string 'email'
    t.string 'password'
    t.string 'position_name'
    t.string 'auth_token'
    t.boolean 'show_onboarding_screen'
    t.integer 'state'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'branches', 'companies'
  add_foreign_key 'factory_elements', 'branches'
end
