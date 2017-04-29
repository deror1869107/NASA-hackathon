class InfoMarketsController < ApplicationController
  def create
    token = SecureRandom.base58
    InfoMarket.create(near: info_params["near"], forNum: info_params["forNum"], againstNum: info_params["againstNum"], token: token)
    render :json => token
  end

  def result
    res = {forNum: InfoMarket.group(:near).sum(:forNum), againstNum: InfoMarket.group(:near).sum(:againstNum)}
    render :json => res.to_json
  end

  def find_by_token
    render :json => InfoMarket.find_by(token: params["token"])
  end

  private

  def info_params
    params.require(:info_market).permit(:near, :forNum, :againstNum)
  end
end
