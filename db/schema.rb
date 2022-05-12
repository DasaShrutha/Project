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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_21_143551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "configurations", force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "value_type", default: "text", null: false
  end

  create_table "contact_informations", force: :cascade do |t|
    t.string "contact_type"
    t.text "value"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fasta", force: :cascade do |t|
    t.decimal "latitude"
    t.decimal "longitude"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name_of_contributor"
    t.string "organization"
    t.string "project"
    t.string "location_of_sample_collection"
    t.string "nature_of_sample"
    t.string "sample_source"
    t.float "temperature"
    t.float "salinity"
    t.float "depth"
    t.string "organism_present_in_sample"
    t.string "type_of_genetic_material_sequenced"
    t.string "source_of_genetic_material"
    t.string "region_sequenced"
    t.string "sequencing_technology"
    t.integer "phred_quality_score"
    t.integer "sequence_length"
    t.text "comments"
    t.index ["latitude"], name: "index_fasta_on_latitude"
    t.index ["longitude"], name: "index_fasta_on_longitude"
    t.index ["user_id"], name: "index_fasta_on_user_id"
  end

  create_table "media", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media_medium_categories", force: :cascade do |t|
    t.bigint "medium_id"
    t.bigint "media_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["media_category_id"], name: "index_media_medium_categories_on_media_category_id"
    t.index ["medium_id"], name: "index_media_medium_categories_on_medium_id"
  end

  create_table "old_passwords", force: :cascade do |t|
    t.string "encrypted_password", null: false
    t.string "password_archivable_type", null: false
    t.integer "password_archivable_id", null: false
    t.string "password_salt"
    t.datetime "created_at"
    t.index ["password_archivable_type", "password_archivable_id"], name: "index_password_archivable"
  end

  create_table "publications", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sliders", force: :cascade do |t|
    t.string "alt_text"
    t.integer "sequence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "social_media", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.string "url"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "role"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "approved", default: false, null: false
    t.bigint "users_category_id"
    t.string "institution"
    t.string "country"
    t.string "designation"
    t.string "project"
    t.string "potential_use_of_data"
    t.index ["approved"], name: "index_users_on_approved"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["users_category_id"], name: "index_users_on_users_category_id"
  end

  create_table "users_categories", force: :cascade do |t|
    t.string "name"
    t.bigint "users_tier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_tier_id"], name: "index_users_categories_on_users_tier_id"
  end

  create_table "users_tiers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "fasta", "users"
end
