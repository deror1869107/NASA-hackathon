json.array!(@catalogs) do |catalog|
  if catalog.longitude and catalog.latitude
    country = catalog.country || "Unknown"
    date = catalog.date || "Unknown"
    trigger = catalog.trigger || "Unknown"
    injuries = catalog.injuries || "Unknown"
    size = catalog.landslide_size || "Unknown"
    if catalog.photos_link.blank?
      photos_link = "no-image-found.jpg"
    else
      photos_link = catalog.photos_link
    end

    json.type "Feature"
    json.geometry do
      json.type "Point"
      json.coordinates do
        json.array! [catalog.longitude, catalog.latitude]
      end
    end
    json.properties do
      json.description "<center><h3>#{country}:#{date}</strong></h3></center><hr><ul><li>Triggered By: #{trigger}</li><li>Injuries: #{injuries}</li><li>Landslide Size: #{size}</li></ul><center><img src=\"/static/landslide_victory/public/uploads/#{photos_link}\" align=\"middle\" height=\"300\" width=\"300\"></center>"
    end
  end
end
