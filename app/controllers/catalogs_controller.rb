class CatalogsController < ApplicationController
  def all
    render :json => Catalog.all
  end

  def create
    params.permit!
    Catalog.create(catalog_params)
  end

  private

  def catalog_params
    params.require(:catalog)
  end
end
