class Admin::ServiceController < ApplicationController
  def new; end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to admin_service_path(@service)
    else
      render 'new'
    end
  end

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def edit; end

  def update
    @service.update(service_params)
    redirect_to admin_service_path(@service)
  end

  def destroy; end

  private

  def service_params
    params.require(:service).permit(:name, :explanation, :price_without_tax, :image)
  end
end
