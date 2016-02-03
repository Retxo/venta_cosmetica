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

ActiveRecord::Schema.define(version: 20160203115904) do

  create_table "exfoliantes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hidratantes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "imagen"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "aplicar"
    t.text     "recomendacion"
  end

  create_table "higienes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.integer  "tipo_piel"
    t.integer  "sensibilidad"
    t.integer  "poros"
    t.integer  "rojeces"
    t.integer  "acne"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "fototipo1"
    t.integer  "fototipo2"
    t.integer  "fototipo3"
    t.integer  "fototipo4"
    t.integer  "fototipo5"
    t.integer  "fototipo6"
    t.integer  "fototipo7"
    t.integer  "fototipo"
    t.integer  "exposicion1"
    t.integer  "exposicion2"
    t.integer  "embarazada"
    t.integer  "medicacion"
    t.integer  "exposicion"
    t.integer  "riesgo"
    t.integer  "da"
    t.integer  "sufres_da"
    t.integer  "humedad_y_ta"
    t.integer  "estres"
    t.integer  "dieta"
    t.integer  "lavas"
    t.integer  "fumar"
    t.integer  "expuesto_sol"
    t.integer  "antiacne"
    t.integer  "factor_nutricion"
  end

  create_table "protectors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text     "pregunta"
    t.text     "respuesta1"
    t.integer  "valor1"
    t.integer  "next1"
    t.text     "respuesta2"
    t.integer  "valor2"
    t.integer  "next2"
    t.text     "respuesta3"
    t.integer  "valor3"
    t.integer  "next3"
    t.text     "respuesta4"
    t.integer  "valor4"
    t.integer  "next4"
    t.text     "respuesta5"
    t.integer  "valor5"
    t.integer  "next5"
    t.text     "respuesta6"
    t.integer  "valor6"
    t.integer  "next6"
    t.string   "nombre_preg"
    t.integer  "prev"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "relation_exfoliantes", force: :cascade do |t|
    t.integer  "numero_terapia"
    t.integer  "exfoliante_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "relation_exfoliantes", ["exfoliante_id"], name: "index_relation_exfoliantes_on_exfoliante_id"

  create_table "relation_hidratantes", force: :cascade do |t|
    t.integer  "numero_terapia"
    t.integer  "hidratante_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "relation_hidratantes", ["hidratante_id"], name: "index_relation_hidratantes_on_hidratante_id"

  create_table "relation_higienes", force: :cascade do |t|
    t.integer  "numero_terapia"
    t.integer  "higiene_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "relation_higienes", ["higiene_id"], name: "index_relation_higienes_on_higiene_id"

  create_table "relation_protectors", force: :cascade do |t|
    t.integer  "numero_terapia"
    t.integer  "protector_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "relation_protectors", ["protector_id"], name: "index_relation_protectors_on_protector_id"

end
