class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.string :apncode
      t.string :rrp
      t.integer :lastByPrice
      t.text :itemDescription
      t.text :author
      t.text :productCategory
      t.integer :actualStockOnHand
      t.date :transDate
      t.time :transTime
      t.string :transDocumentNumber
      t.string :transRreference
      t.integer :transTotalExtaxValue
      t.integer :transTotaltax
      t.integer :totalDiscountGiven

      t.timestamps
    end
  end
end
