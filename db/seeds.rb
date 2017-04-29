# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'net/http'
require 'json'

uri = URI("https://data.nasa.gov/resource/tfkf-kniw.json")

Net::HTTP.start(uri.host, uri.port,
  :use_ssl => uri.scheme == 'https') do |http|
  request = Net::HTTP::Get.new uri

  response = http.request request # Net::HTTPResponse object
  json = JSON.parse response.body
  json.each do |c|
    c.delete(":@computed_region_cbhk_fwbd")
    c.delete(":@computed_region_nnqa_25f4")
    c.delete("id")
    Catalog.create(c)
  end
end
