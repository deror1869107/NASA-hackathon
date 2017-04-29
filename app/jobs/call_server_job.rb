class CallServerJob < ApplicationJob
  queue_as :default

  def perform(catalog)
    # Do something later
    require 'net/http'
    uri = URI('http://nasa2017.pagekite.me/new')
    http = Net::HTTP.new(uri.host, uri.port)
    req = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
    req.body = catalog.to_json
    http.request req
  end
end

