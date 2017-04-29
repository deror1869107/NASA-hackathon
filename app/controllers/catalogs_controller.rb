class CatalogsController < ApplicationController
  def all
    render :json => Catalog.all
  end
end
