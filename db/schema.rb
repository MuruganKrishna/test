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

ActiveRecord::Schema.define(version: 2019_01_21_184604) do

  create_table "asserts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "equipment_name"
    t.integer "equipment_price"
    t.bigint "company_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_detail_id"], name: "index_asserts_on_company_detail_id"
  end

  create_table "attendances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "leave"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_attendances_on_employee_id"
  end

  create_table "company_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "designation"
    t.bigint "company_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_detail_id"], name: "index_employees_on_company_detail_id"
  end

  create_table "payments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nameofinvest"
    t.integer "cost"
    t.bigint "company_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_detail_id"], name: "index_payments_on_company_detail_id"
  end

  create_table "reimbursements", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "purpose"
    t.integer "cost"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_reimbursements_on_employee_id"
  end

  create_table "salaries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "actual_salary"
    t.integer "current_salary"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_salaries_on_employee_id"
  end

  add_foreign_key "asserts", "company_details"
  add_foreign_key "attendances", "employees"
  add_foreign_key "employees", "company_details"
  add_foreign_key "payments", "company_details"
  add_foreign_key "reimbursements", "employees"
  add_foreign_key "salaries", "employees"
end
