class Sale < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.my_import(file)
    sales = []
    CSV.foreach('sales5.csv', headers: true) do |row|
      sales << Sale.new(row.to_h)
    end
    Sale.import sales, recursive: true
  end
end
