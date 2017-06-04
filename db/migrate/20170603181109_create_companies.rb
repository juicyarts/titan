# frozen_string_literal: true

# create Components
class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.binary :logo
      t.string :vat_nr
      t.integer :state

      t.timestamps
    end
  end
end
