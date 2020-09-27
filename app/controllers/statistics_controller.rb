class StatisticsController < ApplicationController
  before_action :set_sale, only: [:show]
  skip_before_action :verify_authenticity_token

  def statistics
     @viewmonths = Sale.select("id, YEAR(transDate) as Year, MONTH(transDate) as Month, SUM(transTotalExtaxValue) as Total").group("YEAR(transDate),  MONTH(transDate)")

     @viewyears = Sale.select("YEAR(transDate) as Year").group("YEAR(transDate)")

     @viewmonthyear = Sale.select("MONTH(transDate) as Month").group("MONTH(transDate)")
  end
end
