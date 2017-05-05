class CatalogsController < ApplicationController
  include Recaptcha::Verify

  def all
    render :json => Catalog.all
  end

  def index
    @catalogs = Catalog.all
  end

  def create
    response = params["response"]
    params.permit!
    @catalog = Catalog.new(catalog_params)
    if verify_recaptcha(response: response) && @catalog.save
      res = {success: true}
    else
      res = {success: false}
    end
    render :json => res.to_json
  end

  private

  def catalog_params
    params.require(:catalog)
  end
end
