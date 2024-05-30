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

ActiveRecord::Schema[7.1].define(version: 2024_05_30_143454) do
  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.integer "message_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_contacts_on_message_id"
  end

  create_table "contents", force: :cascade do |t|
    t.text "value"
    t.string "content_type"
    t.integer "message_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_contents_on_message_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "medium"
    t.datetime "sent_at"
    t.datetime "edited_at"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.integer "sent_by_contact_id"
    t.index ["sent_by_contact_id"], name: "index_messages_on_sent_by_contact_id"
  end

  add_foreign_key "contacts", "messages"
  add_foreign_key "contents", "messages"
  add_foreign_key "messages", "contacts", column: "sent_by_contact_id"
end
