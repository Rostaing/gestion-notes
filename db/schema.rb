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

ActiveRecord::Schema.define(version: 2021_02_25_031532) do

  create_table "anneeacademiques", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.date "date_debut"
    t.date "date_fin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.string "statut", default: "En cours", null: false
    t.index ["deleted_at"], name: "index_anneeacademiques_on_deleted_at"
  end

  create_table "bulletins", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.date "date_edition"
    t.date "date_retrait"
    t.float "moyenne_etudiant"
    t.float "moyenne_max_clas"
    t.float "moyenne_min_clas"
    t.integer "effectif_clas"
    t.integer "rang_etudiant"
    t.string "decision_conseil_prof"
    t.bigint "etudiant_id", null: false
    t.bigint "mention_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_bulletins_on_deleted_at"
    t.index ["etudiant_id"], name: "index_bulletins_on_etudiant_id"
    t.index ["mention_id"], name: "index_bulletins_on_mention_id"
  end

  create_table "clas", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "code"
    t.string "libelle"
    t.bigint "filiere_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_clas_on_deleted_at"
    t.index ["filiere_id"], name: "index_clas_on_filiere_id"
  end

  create_table "countries", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "nom"
    t.string "code"
    t.string "membre", limit: 5
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_countries_on_deleted_at"
  end

  create_table "ens_clas_matieres", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "anneeacademique_id", null: false
    t.bigint "enseignant_id", null: false
    t.bigint "cla_id", null: false
    t.bigint "matiere_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["anneeacademique_id"], name: "index_ens_clas_matieres_on_anneeacademique_id"
    t.index ["cla_id"], name: "index_ens_clas_matieres_on_cla_id"
    t.index ["deleted_at"], name: "index_ens_clas_matieres_on_deleted_at"
    t.index ["enseignant_id"], name: "index_ens_clas_matieres_on_enseignant_id"
    t.index ["matiere_id"], name: "index_ens_clas_matieres_on_matiere_id"
  end

  create_table "enseignants", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "matricule"
    t.string "nom"
    t.string "prenom"
    t.string "sexe"
    t.string "email"
    t.string "telephone"
    t.string "bp"
    t.date "date_naissance"
    t.string "lieu_naissance"
    t.string "rue"
    t.string "quartier"
    t.bigint "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "photo"
    t.datetime "deleted_at"
    t.index ["country_id"], name: "index_enseignants_on_country_id"
    t.index ["deleted_at"], name: "index_enseignants_on_deleted_at"
  end

  create_table "etudiants", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "matricule"
    t.string "nom"
    t.string "prenom"
    t.string "sexe"
    t.string "email"
    t.string "telephone"
    t.string "bp"
    t.date "date_naissance"
    t.string "lieu_naissance"
    t.string "rue"
    t.string "quartier"
    t.bigint "cla_id", null: false
    t.bigint "country_id", null: false
    t.bigint "anneeacademique_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "photo"
    t.datetime "deleted_at"
    t.index ["anneeacademique_id"], name: "index_etudiants_on_anneeacademique_id"
    t.index ["cla_id"], name: "index_etudiants_on_cla_id"
    t.index ["country_id"], name: "index_etudiants_on_country_id"
    t.index ["deleted_at"], name: "index_etudiants_on_deleted_at"
  end

  create_table "evaluations", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.date "date_evaluation"
    t.string "typeevaluation"
    t.bigint "cla_id", null: false
    t.bigint "matiere_id", null: false
    t.bigint "enseignant_id", null: false
    t.bigint "anneeacademique_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["anneeacademique_id"], name: "index_evaluations_on_anneeacademique_id"
    t.index ["cla_id"], name: "index_evaluations_on_cla_id"
    t.index ["deleted_at"], name: "index_evaluations_on_deleted_at"
    t.index ["enseignant_id"], name: "index_evaluations_on_enseignant_id"
    t.index ["matiere_id"], name: "index_evaluations_on_matiere_id"
  end

  create_table "filieres", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "code"
    t.string "libelle"
    t.bigint "systeme_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_filieres_on_deleted_at"
    t.index ["systeme_id"], name: "index_filieres_on_systeme_id"
  end

  create_table "lignebulletins", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "matiere"
    t.integer "coefficient"
    t.float "moyenne_clas"
    t.float "moyenne_etudiant"
    t.bigint "bulletin_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["bulletin_id"], name: "index_lignebulletins_on_bulletin_id"
    t.index ["deleted_at"], name: "index_lignebulletins_on_deleted_at"
  end

  create_table "matieres", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "code"
    t.string "libelle"
    t.integer "coefficient"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_matieres_on_deleted_at"
  end

  create_table "mentions", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_mentions_on_deleted_at"
  end

  create_table "notes", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.float "valeur"
    t.bigint "etudiant_id", null: false
    t.bigint "evaluation_id", null: false
    t.bigint "mention_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_notes_on_deleted_at"
    t.index ["etudiant_id"], name: "index_notes_on_etudiant_id"
    t.index ["evaluation_id"], name: "index_notes_on_evaluation_id"
    t.index ["mention_id"], name: "index_notes_on_mention_id"
  end

  create_table "permission_users", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "permission_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["permission_id"], name: "index_permission_users_on_permission_id"
    t.index ["user_id"], name: "index_permission_users_on_user_id"
  end

  create_table "permissions", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "role_users", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_role_users_on_role_id"
    t.index ["user_id"], name: "index_role_users_on_user_id"
  end

  create_table "roles", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "systemes", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_systemes_on_deleted_at"
  end

  create_table "users", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
  end

end
