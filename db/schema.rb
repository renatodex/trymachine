# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140602050307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiment_data", force: true do |t|
    t.integer  "experiment_id"
    t.integer  "action_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "experiment_variant_id"
    t.string   "token"
  end

  add_index "experiment_data", ["action_type_id"], name: "index_experiment_data_on_action_type_id", using: :btree
  add_index "experiment_data", ["experiment_id"], name: "index_experiment_data_on_experiment_id", using: :btree
  add_index "experiment_data", ["experiment_variant_id"], name: "index_experiment_data_on_experiment_variant_id", using: :btree
  add_index "experiment_data", ["token"], name: "index_experiment_data_on_token", unique: true, using: :btree

  create_table "experiment_variants", force: true do |t|
    t.string   "name"
    t.integer  "experiment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiment_variants", ["experiment_id"], name: "index_experiment_variants_on_experiment_id", using: :btree

  create_table "experiments", force: true do |t|
    t.string   "name"
    t.datetime "run_until"
    t.string   "description_a"
    t.string   "description_b"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
