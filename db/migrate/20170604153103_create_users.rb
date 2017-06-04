class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :salutation
      t.string :academic_title
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :email
      t.string :password_digest
      t.string :position_name
      t.string :token
      t.boolean :show_onboarding_screen
      t.integer :state

      t.timestamps
    end
  end
end
