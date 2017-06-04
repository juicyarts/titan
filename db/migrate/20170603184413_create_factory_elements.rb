

# frozen_string_literal: true

# some desc
class CreateFactoryElements < ActiveRecord::Migration[5.1]
  def change
    create_table :factory_elements do |t|
      t.string :name
      t.integer :state
      t.references :branch, foreign_key: true

      t.timestamps
    end
  end
end
