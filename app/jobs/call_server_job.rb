class CallServerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    require 'net/http'
    Net::HTTP.get('8c433e9c.ngrok.io', '/update_points')
  end
end

