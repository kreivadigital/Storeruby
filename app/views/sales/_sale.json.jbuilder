json.extract! sale, :id, :apncode, :rrp, :lastByPrice, :itemDescription, :author, :productCategory, :actualStockOnHand, :transDate, :transTime, :transDocumentNumber, :transRreference, :transTotalExtaxValue, :transTotaltax, :totalDiscountGiven, :created_at, :updated_at
json.url sale_url(sale, format: :json)
