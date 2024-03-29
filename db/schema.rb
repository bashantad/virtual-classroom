# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_02_225138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
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

  create_table "assignment_submissions", force: :cascade do |t|
    t.datetime "submission_date"
    t.bigint "user_id", null: false
    t.bigint "assignment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assignment_id"], name: "index_assignment_submissions_on_assignment_id"
    t.index ["user_id"], name: "index_assignment_submissions_on_user_id"
  end

  create_table "assignments", force: :cascade do |t|
    t.string "question"
    t.integer "points"
    t.datetime "due_date"
    t.bigint "chapter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chapter_id"], name: "index_assignments_on_chapter_id"
  end

  create_table "calls", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "no_of_allowed_users", default: 5
    t.string "calling_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "course_id"
    t.index ["calling_code"], name: "index_calls_on_calling_code"
    t.index ["course_id"], name: "index_calls_on_course_id"
    t.index ["user_id"], name: "index_calls_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chapters", force: :cascade do |t|
    t.string "title"
    t.bigint "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id", "title"], name: "index_chapters_on_course_id_and_title", unique: true
    t.index ["course_id"], name: "index_chapters_on_course_id"
  end

  create_table "conversation_enrolled_users", force: :cascade do |t|
    t.bigint "conversation_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conversation_id"], name: "index_conversation_enrolled_users_on_conversation_id"
    t.index ["user_id"], name: "index_conversation_enrolled_users_on_user_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "course_id"
    t.boolean "is_group", default: false
    t.index ["course_id"], name: "index_conversations_on_course_id"
  end

  create_table "course_contents", force: :cascade do |t|
    t.string "title"
    t.string "duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "preview", default: false
    t.bigint "chapter_id", null: false
    t.index ["chapter_id"], name: "index_course_contents_on_chapter_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id", null: false
    t.string "website"
    t.text "course_for"
    t.float "price"
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "approved", default: false
    t.text "short_description"
    t.string "duration"
    t.integer "no_of_lessons"
    t.string "level"
    t.integer "discount_percentage", default: 0
    t.index ["category_id"], name: "index_courses_on_category_id"
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "earning_histories", force: :cascade do |t|
    t.date "earning_date"
    t.bigint "stock_id"
    t.index ["stock_id"], name: "index_earning_histories_on_stock_id"
  end

  create_table "enquiries", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "enquiry_type"
    t.text "message"
    t.string "phone"
    t.string "client_ip"
    t.datetime "resolved_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enroll_requests", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "course_id", null: false
    t.string "full_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "phone"
    t.boolean "approved"
    t.index ["course_id"], name: "index_enroll_requests_on_course_id"
    t.index ["user_id"], name: "index_enroll_requests_on_user_id"
  end

  create_table "enrolled_course_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_enrolled_course_users_on_course_id"
    t.index ["user_id", "course_id"], name: "index_enrolled_course_users_on_user_id_and_course_id", unique: true
    t.index ["user_id"], name: "index_enrolled_course_users_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "conversation_id", null: false
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "sender_id"
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
  end

  create_table "notebooks", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_notebooks_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id", null: false
    t.bigint "notebook_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["notebook_id"], name: "index_notes_on_notebook_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "qualifications", force: :cascade do |t|
    t.string "name_of_institution"
    t.integer "year_start"
    t.string "type"
    t.integer "year_end"
    t.string "title"
    t.string "location"
    t.string "country"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_qualifications_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "comment"
    t.integer "rating"
    t.bigint "reviewable_id"
    t.string "reviewable_type"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reviewable_type", "reviewable_id"], name: "index_reviews_on_reviewable_type_and_reviewable_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "site_histories", force: :cascade do |t|
    t.string "company_url"
    t.bigint "site_id"
    t.string "engagement_string"
    t.string "country"
    t.integer "country_rank"
    t.integer "start_rank"
    t.integer "end_rank"
    t.float "daily_page_views"
    t.float "daily_page_views_percentage"
    t.float "daily_time_on_site"
    t.float "daily_time_on_site_percentage"
    t.float "bounce_rate"
    t.float "bounce_rate_percentage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["site_id"], name: "index_site_histories_on_site_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "company_url"
    t.bigint "stock_id"
    t.integer "global_rank"
    t.float "page_views_per_million"
    t.float "page_views_per_user"
    t.integer "country_rank"
    t.float "reach_per_million"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_main", default: false
    t.boolean "is_international"
    t.index ["stock_id"], name: "index_sites_on_stock_id"
  end

  create_table "stock_prices", force: :cascade do |t|
    t.date "date"
    t.float "open_price"
    t.float "high_price"
    t.float "close_price"
    t.float "low_price"
    t.float "adjusted_close_price"
    t.integer "volume"
    t.bigint "stock_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "day_of_the_week"
    t.integer "week_number"
    t.float "price_change_percentage"
    t.index ["stock_id", "date"], name: "index_stock_prices_on_stock_id_and_date", unique: true
    t.index ["stock_id"], name: "index_stock_prices_on_stock_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.string "ticker"
    t.string "name"
    t.string "website"
    t.float "market_cap"
    t.string "country"
    t.string "ipo_year"
    t.string "sector"
    t.integer "volume"
    t.string "industry"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "subsidiaries"
    t.text "main_website"
    t.text "international_sites"
  end

  create_table "user_message_notifications", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "message_id", null: false
    t.boolean "read", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "sender_id"
    t.index ["message_id"], name: "index_user_message_notifications_on_message_id"
    t.index ["sender_id"], name: "index_user_message_notifications_on_sender_id"
    t.index ["user_id"], name: "index_user_message_notifications_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name", default: "", null: false
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_admin", default: false
    t.string "application_status"
    t.integer "call_limit_per_month", default: 20
    t.datetime "deleted_at"
    t.string "phone"
    t.string "state"
    t.string "street_address"
    t.string "city"
    t.integer "zip_code"
    t.string "country"
    t.text "short_bio"
    t.text "linkedin_url"
    t.text "twitter_url"
    t.boolean "is_teacher", default: false
    t.boolean "is_trader"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "assignment_submissions", "assignments"
  add_foreign_key "assignment_submissions", "users"
  add_foreign_key "assignments", "chapters"
  add_foreign_key "calls", "courses"
  add_foreign_key "calls", "users"
  add_foreign_key "chapters", "courses"
  add_foreign_key "conversation_enrolled_users", "conversations"
  add_foreign_key "conversation_enrolled_users", "users"
  add_foreign_key "conversations", "courses"
  add_foreign_key "course_contents", "chapters"
  add_foreign_key "courses", "categories"
  add_foreign_key "courses", "users"
  add_foreign_key "enroll_requests", "courses"
  add_foreign_key "enroll_requests", "users"
  add_foreign_key "enrolled_course_users", "courses"
  add_foreign_key "enrolled_course_users", "users"
  add_foreign_key "messages", "conversations"
  add_foreign_key "notebooks", "users"
  add_foreign_key "notes", "notebooks"
  add_foreign_key "notes", "users"
  add_foreign_key "qualifications", "users"
  add_foreign_key "reviews", "users"
  add_foreign_key "site_histories", "sites"
  add_foreign_key "sites", "stocks"
  add_foreign_key "user_message_notifications", "messages"
  add_foreign_key "user_message_notifications", "users"
end
