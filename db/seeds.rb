# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
   User.create(
    "nom": "KOUSSOUBE",
    "prenom": "Souleymane",
    "sexe": "Homme",
    "email": "koussoube@gmail.com",
    "password": "12345678",
    # "password_confiramtion": "1234567890",
    "matricule": "ENS05",
    "telephone": "+241 05 29 70 14",
    "bp": "2263",
    "datenaissance": "1989-04-25",
    "lieunaissance": "Ouagadougou",
    "quartier": "IAI",
    "country_id":7,
    "role_id":5,
    "photo": "",
    "anneeacademique_id":11,  
)
