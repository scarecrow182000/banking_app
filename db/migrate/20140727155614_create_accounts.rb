class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.references :transaction, index: true
      t.integer :balance

      t.timestamps
    end
  end
end
