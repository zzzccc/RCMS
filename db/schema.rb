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

ActiveRecord::Schema.define(:version => 20130329141643) do

  create_table "attachfiles", :force => true do |t|
    t.integer  "document_id", :null => false
    t.string   "filename",    :null => false
    t.string   "filepath",    :null => false
    t.integer  "filesize",    :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name",                           :null => false
    t.string   "description"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "documents_count", :default => 0
  end

  create_table "comments", :force => true do |t|
    t.integer  "user_id",     :null => false
    t.integer  "document_id", :null => false
    t.integer  "version"
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "documents", :force => true do |t|
    t.integer  "user_id",                           :null => false
    t.integer  "attachfile_id"
    t.integer  "groupid"
    t.integer  "version"
    t.boolean  "published",      :default => false
    t.string   "title",                             :null => false
    t.text     "content"
    t.integer  "readcount",      :default => 0
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "comments_count", :default => 0
    t.integer  "category_id",                       :null => false
    t.integer  "tag_id"
  end

  create_table "tags", :force => true do |t|
    t.integer  "document_id"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "tags", ["name"], :name => "index_tags_on_name"

  create_table "tmpfiles", :force => true do |t|
    t.string   "ufilename",  :null => false
    t.string   "ufilepath",  :null => false
    t.string   "filename",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "time_token"
    t.integer  "filesize"
  end

  create_table "users", :force => true do |t|
    t.string   "userid",                             :null => false
    t.string   "email",                              :null => false
    t.string   "password_digest",                    :null => false
    t.boolean  "admin",           :default => false, :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

end
