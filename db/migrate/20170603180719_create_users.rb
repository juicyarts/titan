class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :salutation
      t.string :academic_title
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :email
      t.string :password
      t.string :position_name
      t.string :auth_token
      t.boolean :show_onboarding_screen
      t.integer :state

      t.timestamps
    end
  end
end
