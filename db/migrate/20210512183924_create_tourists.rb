class CreateTourists < ActiveRecord::Migration[6.1]
  def change
    create_table :tourists do |t|
      t.string :name
      t.string :cpf
      t.float :balance

      t.timestamps
    end
  end
end
