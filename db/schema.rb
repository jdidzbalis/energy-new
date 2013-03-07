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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130307170338) do

  create_table "admins", :force => true do |t|
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "credits", :force => true do |t|
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "project_id"
    t.integer  "user_id"
    t.integer  "investment_fundinglevel"
    t.integer  "annual_return"
  end

  create_table "investments", :force => true do |t|
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "investment_fundinglevel"
    t.integer  "user_id"
    t.integer  "project_id"
    t.string   "project_name"
  end

  create_table "projects", :force => true do |t|
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "project_name"
    t.string   "project_owner"
    t.string   "project_location"
    t.date     "project_opdate"
    t.integer  "project_cost"
    t.integer  "project_esavings"
    t.integer  "project_fundlevel1"
    t.integer  "project_fundlevel2"
    t.integer  "project_fundlevel3"
    t.integer  "project_fundlevel4"
    t.integer  "project_fundlevel5"
    t.integer  "avatar"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "project_currentfunded"
    t.integer  "project_percentcurrentfunded"
    t.string   "project_fundingstatus"
    t.integer  "project_sharesavings"
    t.integer  "y1savings"
    t.integer  "y1energyprice"
    t.decimal  "total_return_per_diem"
  end

  create_table "returns", :force => true do |t|
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "investment_fundinglevel"
    t.string   "state_returns"
    t.decimal  "return_per_diem"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "location"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end