class Admin::SearchesController < ApplicationController
  before_action :authenticate_admin!

  def search
    @customers = Customer.search(params[:range])
    @range = params[:range]
    render "admin/customers/index"
  end


end
