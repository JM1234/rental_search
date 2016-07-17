class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.string :email_address
      t.text :address
      t.text :about
      t.string :contact_no

      t.timestamps null: false
    end
  end
end
