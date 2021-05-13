class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.float :total_purchase
      t.float :total_cashback      
      t.references :provider, null: false, foreign_key: true
      t.references :tourist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
