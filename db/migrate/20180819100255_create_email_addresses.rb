class CreateEmailAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :email_addresses do |t|
      t.string :user_name, :null =>false
      t.string :email

      t.timestamps
    end
  end
end
