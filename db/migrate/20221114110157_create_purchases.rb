class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name,     null: false, unique: true, index: true
      t.integer :amount,  null: false, default: 0

      t.timestamps
    end
  end
end
