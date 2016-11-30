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

ActiveRecord::Schema.define(version: 20161128234111) do

  create_table "actual_diseases", force: :cascade do |t|
    t.string   "clase_funcional"
    t.string   "enf_coronaria"
    t.integer  "hta"
    t.string   "valvulopatia"
    t.string   "arritmias_marcapaso"
    t.string   "fumador"
    t.string   "epoc"
    t.string   "asma"
    t.string   "nefropatia_uropatia"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "patient_id"
    t.integer  "user_id"
  end

  create_table "actual_hepatics", force: :cascade do |t|
    t.string   "s_hepatorrenal"
    t.string   "s_hepatopulmonar"
    t.string   "ht_pulmonar"
    t.string   "ht_portal"
    t.string   "ascitis"
    t.string   "esplenomeg"
    t.string   "varices_esof"
    t.string   "encefalopatia"
    t.boolean  "discrasia"
    t.string   "hiponatremia"
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "antecedent_hepatics", force: :cascade do |t|
    t.boolean  "s_hepatorrenal"
    t.boolean  "s_hepatopulmonar"
    t.boolean  "ht_pulmonar"
    t.boolean  "ht_portal"
    t.boolean  "ascitis"
    t.boolean  "esplenomeg"
    t.boolean  "varices_esof"
    t.boolean  "encefalopatia"
    t.boolean  "discrasia"
    t.boolean  "hiponatremia"
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "antecedents", force: :cascade do |t|
    t.boolean  "enf_coronaria"
    t.boolean  "hta"
    t.boolean  "valvulopatia"
    t.boolean  "arritmias_marcapaso"
    t.boolean  "fumador"
    t.boolean  "epoc"
    t.boolean  "asma"
    t.boolean  "nefropatia_uropatia"
    t.boolean  "diabetes"
    t.boolean  "hipotiroidismo"
    t.boolean  "hipertiroidismo"
    t.boolean  "rge_gastritis_ulcus"
    t.boolean  "alergias"
    t.boolean  "cirugia_abdominal"
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "complementarios_exams", force: :cascade do |t|
    t.string   "ecg"
    t.string   "ecocardiograma"
    t.string   "ecodobutamina"
    t.string   "ergometria"
    t.string   "holter"
    t.string   "rxtx"
    t.string   "funcional_respiratorio"
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "corevaluations", force: :cascade do |t|
    t.string   "causa_hepatopatia"
    t.integer  "peso"
    t.integer  "talla"
    t.integer  "pxif"
    t.integer  "meld"
    t.integer  "melde"
    t.string   "child"
    t.string   "asa"
    t.text     "maximos_riesgos"
    t.boolean  "ingresa_lista"
    t.text     "causa_no_ingreso"
    t.text     "estudios_pendientes"
    t.boolean  "candidato_fastrack"
    t.boolean  "candidato_tranexamico"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id"
    t.integer  "patient_id"
  end

  create_table "examen_fisicos", force: :cascade do |t|
    t.string   "apertura_bucal"
    t.string   "mpt"
    t.string   "protesis"
    t.string   "cuello"
    t.integer  "pa_sistolica"
    t.integer  "pa_diastolica"
    t.integer  "fc"
    t.boolean  "soplos"
    t.string   "pp"
    t.string   "tiroides"
    t.string   "reperes_vvc"
    t.string   "red_venosa"
    t.string   "test_allen"
    t.string   "siquismo"
    t.boolean  "flapping"
    t.string   "estado_nutricional"
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "farmacologico_treatments", force: :cascade do |t|
    t.boolean  "betabloqueantes"
    t.boolean  "bloqueantes_calcio"
    t.boolean  "stringieca"
    t.boolean  "diureticos"
    t.boolean  "colesteramina"
    t.boolean  "omeprazol"
    t.boolean  "antibioticos"
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "laboratory_exams", force: :cascade do |t|
    t.integer  "hb"
    t.integer  "hto"
    t.integer  "plaquetas"
    t.integer  "gb"
    t.integer  "tp"
    t.decimal  "inr"
    t.integer  "fibrinogeno"
    t.integer  "aPTT"
    t.decimal  "glicemia"
    t.decimal  "azoemia"
    t.decimal  "creatininemia"
    t.integer  "na"
    t.decimal  "k"
    t.decimal  "albumina"
    t.decimal  "proteinas_totales"
    t.integer  "fa"
    t.integer  "tgo"
    t.integer  "tgp"
    t.integer  "bt"
    t.integer  "bd"
    t.integer  "bi"
    t.integer  "amilasemia"
    t.string   "hiv"
    t.string   "cmv"
    t.string   "vdrl"
    t.decimal  "tsh"
    t.date     "fecha_ultima_parac"
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true

  create_table "patients", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "ci"
    t.date     "f_ingreso"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.string   "fnr"
    t.string   "sexo"
    t.string   "prestador"
    t.string   "procedencia"
    t.string   "comentarios"
    t.date     "f_nacimiento"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
