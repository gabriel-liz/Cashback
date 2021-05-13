class CreatePurchaseItens < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_itens do |t|
      t.integer :number_tickets
      t.references :ticket_value, null: false, foreign_key: true
      t.references :cashback, null: false, foreign_key: true

      t.timestamps
    end
  end
end
