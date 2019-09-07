class DataController < ApplicationController
  def index
    @records = DataTable.all.order(created_at: :desc)
  end

  def create
    DataTable.clean!
    @record = DataTable.create data: params.try(:to_s)
    head :ok
  end
end
