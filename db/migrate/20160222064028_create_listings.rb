class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      # basics
      t.string :listing_name, null: false
      t.text :listing_description
      t.integer :property_type, default: 0
      t.integer :room_type, default: 0
      t.integer :accomodates, default: 1
      t.integer :bedrooms, default: 0
      t.integer :beds, default: 0
      t.integer :bathrooms, default: 0
      # location
      t.string :country
      t.string :zip_code
      t.string :state
      t.string :city
      t.string :street_address
      t.string :apt_suite_bldg
      # common amenities
      t.integer :essentials, default: 0
      t.integer :tv, default: 0
      t.integer :cable_tv, default: 0
      t.integer :air_conditioning, default: 0
      t.integer :heating, default: 0
      t.integer :kitchen, default: 0
      t.integer :internet, default: 0
      t.integer :wireless_internet, default: 0
      t.integer :anytime_checkin, default: 0
      # additional amenities
      t.integer :washer, default: 0
      t.integer :pool, default: 0
      t.integer :dryer, default: 0
      t.integer :breakfast, default: 0
      t.integer :free_parking, default: 0
      t.integer :gym, default: 0
      t.integer :elevator, default: 0
      t.integer :iron, default: 0
      t.integer :hair_dryer, default: 0
      t.integer :laptop_friendly_workspace, default: 0
      # Special Features
      t.integer :smoking_allowed, default: 0
      t.integer :pets_allowed, default: 0
      t.integer :pets_live, default: 0
      t.integer :wheelchair_accessible, default: 0
      # pricing
      t.integer :nightly_price, default: 0
      t.integer :weekly_discount, default: 0
      t.integer :monthly_discount, default: 0

      t.timestamps null: false
    end
  end
end
