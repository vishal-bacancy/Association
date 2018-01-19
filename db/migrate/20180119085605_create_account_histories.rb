class CreateAccountHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :account_histories do |t|
    	t.belongs_to :account
      t.string :name

      t.timestamps
    end
  end
end
