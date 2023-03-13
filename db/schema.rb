# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_03_153951) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "air_conditionnings", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.string "name"
    t.integer "outside_unit_type", default: 0
    t.integer "outnbr"
    t.integer "current_type", default: 0
    t.integer "surface"
    t.integer "height"
    t.integer "volume"
    t.string "inside_unit_type"
    t.text "accesories"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_air_conditionnings_on_project_id"
  end

  create_table "cold_rooms", force: :cascade do |t|
    t.integer "temperature"
    t.string "condensing_unit"
    t.boolean "prod_outside"
    t.string "refrigerant_type"
    t.integer "length"
    t.integer "width"
    t.integer "height"
    t.integer "volume"
    t.string "product_types"
    t.string "entries_frequency"
    t.integer "entries_quantity"
    t.integer "heat_sources_power"
    t.text "heat_sources"
    t.text "comment"
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "entry_temperature"
    t.index ["project_id"], name: "index_cold_rooms_on_project_id"
  end

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.integer "status", default: 0
    t.text "message"
    t.bigint "supplier_contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_contact_id"], name: "index_projects_on_supplier_contact_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "quote_requests", force: :cascade do |t|
    t.string "email"
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "response_status", default: false
    t.text "response_comment"
    t.boolean "read", default: false
    t.datetime "received_at"
    t.index ["project_id"], name: "index_quote_requests_on_project_id"
  end

  create_table "spare_parts", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.string "brand"
    t.string "name"
    t.string "reference"
    t.integer "quantity"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_spare_parts_on_project_id"
  end

  create_table "supplier_contacts", force: :cascade do |t|
    t.bigint "supplier_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.string "adress"
    t.string "city"
    t.string "zipcode"
    t.index ["supplier_id"], name: "index_supplier_contacts_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "alias"
    t.string "address"
    t.string "city"
    t.string "zipcode"
    t.boolean "favorite"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_suppliers_on_user_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "company"
    t.string "address"
    t.string "zipcode"
    t.string "city"
    t.string "role"
    t.string "first_name"
    t.string "last_name"
    t.string "shipping_alias"
    t.string "shipping_address"
    t.string "shipping_zipcode"
    t.string "shipping_city"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "has_profile", default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "air_conditionnings", "projects"
  add_foreign_key "cold_rooms", "projects"
  add_foreign_key "projects", "supplier_contacts"
  add_foreign_key "projects", "users"
  add_foreign_key "quote_requests", "projects"
  add_foreign_key "spare_parts", "projects"
  add_foreign_key "supplier_contacts", "suppliers"
  add_foreign_key "suppliers", "users"
  add_foreign_key "user_profiles", "users"
end
