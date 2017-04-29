class CreateCatalogs < ActiveRecord::Migration[5.1]
  def change
    create_table :catalogs do |t|
      t.date :date
      t.time :time
      t.string :country
      t.string :nearest_places
      t.string :hazard_type
      t.string :landslide_type
      t.string :trigger
      t.string :storm_name
      t.string :fatalities
      t.integer :injuries
      t.string :source_name
      t.string :source_link
      t.string :location_description
      t.string :location_accuracy
      t.string :landslide_size
      t.string :photos_link
      t.string :cat_src
      t.integer :cat_id
      t.string :countryname
      t.string :near
      t.float :distance
      t.string :adminname1
      t.string :adminname2
      t.integer :population
      t.string :countrycode
      t.string :continentcode
      t.string :key
      t.integer :version
      t.string :tstamp
      t.string :changeset_id
      t.float :latitude
      t.float :longitude
      t.string :geolocation
      t.timestamps
    end
  end
end
