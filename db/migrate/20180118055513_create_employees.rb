class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :Name
      t.string :Mobile
      t.string :email

      t.timestamps
    end
  end
end
