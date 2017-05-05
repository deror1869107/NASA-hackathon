class InfoMarketsController < ApplicationController
  include Recaptcha::Verify

  def create
    token = SecureRandom.base58
    @infomarket = InfoMarket.new(near: info_params["near"], forNum: info_params["forNum"], againstNum: info_params["againstNum"], token: token)
    if verify_recaptcha(response: info_params[:response]) && @infomarket.save
      res = {success: true, text: token}
    else
      res = {success: false, text: "ReCAPTCHA failed"}
    end
    render :json => res.to_json
  end

  def result
    forNum = InfoMarket.group(:near).sum(:forNum)
    againstNum =InfoMarket.group(:near).sum(:againstNum)
    res = []
    forNum.each do |key, value|
      res.push({near: key, forNum: forNum[key], againstNum: againstNum[key]})
    end
    render :json => res.to_json
  end

  def find_by_token
    render :json => InfoMarket.find_by(token: params["token"])
  end

  private

  def info_params
    params.require(:info_market).permit(:near, :forNum, :againstNum, :response)
  end
end
