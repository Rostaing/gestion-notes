class ReleveController < ApplicationController
  def releve_notes
    id= params[:id]
    @records = ActiveRecord::Base.connection.execute("
      SELECT DISTINCT CONCAT(
        '[', 
        GROUP_CONCAT(JSON_OBJECT(
          'pays',pays,
          'nom_etudiant',nom_etudiant,
          'prenom_etudiant',prenom_etudiant,
          'classe',classe,
          'matiere',matiere,
          'coefficient',coefficient,
          'note', note,
          'annee_academique',annee_academique
          )), 
        ']'
        )
      FROM releve_notes
      
      WHERE cla_id='"+id+"' AND etudiant_id=cla_id
    
      
      
    ")
      
      render json: @records
  
  end
end
# cla_id='"+id+"' AND etudiant_id=cla_id
# WHERE cla_id='"+id+"' AND cl.id=e.id AND e.id=a.id
# , clas, matieres, anneeacademiques, etudiants, countries
# 'etudiants', nom prenom,
#         'matieres', libelle,
#         'matieres', coefficient,
#         'clas',libelle, 
#         'anneeacademique_id', libelle, 
#         'countries',nom, 
#         'libelle',libelle, 
#         'coefficient',coefficient,
#         'cla_id', cla_id