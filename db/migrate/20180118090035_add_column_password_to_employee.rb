class AddColumnPasswordToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :password, :string
  end
end
