class Admin::ServiceController < ApplicationController
    before_action :authenticate_admin!

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      tags = Vision.get_image_data(@service.image)
      tags.each do |tag|
        @service.tags.create(name: tag)
      end
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

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.update(service_params)
    redirect_to admin_service_path(@service)
  end

  def destroy; end

  private

  def service_params
    params.require(:service).permit(:name, :explanation, :price_without_tax, :image, :customer_id)
  end
end
