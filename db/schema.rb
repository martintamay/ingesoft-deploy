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

ActiveRecord::Schema.define(version: 20190226185428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_categories", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "event_comments", force: :cascade do |t|
    t.string   "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "event_id"
    t.integer  "user_id"
    t.index ["event_id"], name: "index_event_comments_on_event_id", using: :btree
    t.index ["user_id"], name: "index_event_comments_on_user_id", using: :btree
  end

  create_table "event_dates", force: :cascade do |t|
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "event_id"
    t.index ["event_id"], name: "index_event_dates_on_event_id", using: :btree
  end

  create_table "event_subscriptions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "event_id"
    t.integer  "user_id"
    t.index ["event_id"], name: "index_event_subscriptions_on_event_id", using: :btree
    t.index ["user_id"], name: "index_event_subscriptions_on_user_id", using: :btree
  end

  create_table "event_tickets", force: :cascade do |t|
    t.string   "acceso"
    t.integer  "cantidad"
    t.integer  "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "event_id"
    t.index ["event_id"], name: "index_event_tickets_on_event_id", using: :btree
  end

  create_table "event_types", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "nombre"
    t.string   "ubicacion"
    t.string   "descripcion"
    t.boolean  "publico"
    t.integer  "posposiciones"
    t.string   "codigo"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.integer  "event_category_id"
    t.integer  "event_type_id"
    t.index ["event_category_id"], name: "index_events_on_event_category_id", using: :btree
    t.index ["event_type_id"], name: "index_events_on_event_type_id", using: :btree
    t.index ["user_id"], name: "index_events_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "g_provider"
    t.string   "g_uid"
    t.string   "g_token"
    t.integer  "g_expires_at"
    t.boolean  "g_expires"
    t.string   "g_refresh_token"
    t.string   "f_provider"
    t.string   "f_uid"
    t.string   "f_name"
    t.string   "f_email"
    t.string   "g_email"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "event_comments", "events"
  add_foreign_key "event_comments", "users"
  add_foreign_key "event_dates", "events"
  add_foreign_key "event_subscriptions", "events"
  add_foreign_key "event_subscriptions", "users"
  add_foreign_key "event_tickets", "events"
  add_foreign_key "events", "event_categories"
  add_foreign_key "events", "event_types"
  add_foreign_key "events", "users"
end
