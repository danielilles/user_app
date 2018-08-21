class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, :null =>false
      t.index :name, unique: true
      t.date :birthday

      t.timestamps
    end
  end
end
