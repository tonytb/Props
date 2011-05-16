# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110515134847) do

  create_table "properties", :force => true do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "address4"
    t.string   "status"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "number_of_occupants"
    t.string   "payment_type"
    t.integer  "property_id"
    t.string   "image_url"
    t.decimal  "price",               :precision => 8, :scale => 2
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pay_type"
    t.string   "country"
    t.string   "payment_frequency"
  end

  create_table "tenants", :force => true do |t|
    t.integer  "property_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "contact_number"
    t.datetime "move_in_date"
    t.datetime "move_out_date"
    t.integer  "number_of_tenants"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
