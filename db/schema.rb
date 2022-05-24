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

ActiveRecord::Schema[7.0].define(version: 2022_05_24_070829) do
  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.integer "turma_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["turma_id"], name: "index_alunos_on_turma_id"
  end

  create_table "atividades", force: :cascade do |t|
    t.string "titulo"
    t.integer "bimestre"
    t.string "descricao"
    t.date "data"
    t.integer "disciplina_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_atividades_on_disciplina_id"
  end

  create_table "avaliacaos", force: :cascade do |t|
    t.integer "pontos"
    t.string "observacoes"
    t.integer "aluno_id", null: false
    t.integer "atividade_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_avaliacaos_on_aluno_id"
    t.index ["atividade_id"], name: "index_avaliacaos_on_atividade_id"
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string "nome"
    t.integer "ano_letivo"
    t.integer "turma_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["turma_id"], name: "index_disciplinas_on_turma_id"
  end

  create_table "turmas", force: :cascade do |t|
    t.string "nome"
    t.integer "ano_letivo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "alunos", "turmas"
  add_foreign_key "atividades", "disciplinas"
  add_foreign_key "avaliacaos", "alunos"
  add_foreign_key "avaliacaos", "atividades"
  add_foreign_key "disciplinas", "turmas"
end
