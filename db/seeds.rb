# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
   User.create(
    "nom": "HOUTSA",
    "prenom": "Felix",
    "sexe": "Homme",
    "email": "houtsa@gmail.com",
    "password": "12345678",
    # "password_confiramtion": "1234567890",
    "matricule": "ENS06",
    "telephone": "+241 02 39 26 52",
    "bp": "2263",
    "datenaissance": "1958-03-25",
    "lieunaissance": "Douala",
    "quartier": "IAI",
    "country_id":3,
    "role_id":5,
    "photo": "",
    "anneeacademique_id":11,  
)
