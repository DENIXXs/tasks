
ActiveRecord::Schema.define(version: 2020_10_28_070355) do

  enable_extension "plpgsql"

  create_table "subtasks", force: :cascade do |t|
    t.integer "task_id"
    t.string "text"
    t.boolean "isCompleted"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
