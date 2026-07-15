from qgis.core import QgsProject, QgsRelation
import uuid

project = QgsProject.instance()

relations = [
    {
        "name": "Formulaire CaractCoursEau",
        "referencing_layer": "Form_CaractCoursEau_9c3a3414_71a5_4ea5_86fc_4382afe9cdf3",
        "referencing_field": "ID_EVEN",
        "referenced_layer": "Evenement_ee0f416a_414c_4808_90c1_361faec47bc2",
        "referenced_field": "ID_EVEN",
    },
    {
        "name": "Etang-EEE",
        "referencing_layer": "Form_EEE_452204ff_960b_4275_b605_b8f36419eba9",
        "referencing_field": "ID_Etang",
        "referenced_layer": "Form_Etang_b06ad713_a2f4_4a9b_9418_6e526929f294",
        "referenced_field": "ID_Etang",
    },
    {
        "name": "Etang-Erosion",
        "referencing_layer": "Form_Erosion_2dead986_71fd_4905_bdd9_0eb7be181e1a",
        "referencing_field": "ID_Etang",
        "referenced_layer": "Form_Etang_b06ad713_a2f4_4a9b_9418_6e526929f294",
        "referenced_field": "ID_Etang",
    },
    {
        "name": "Ponceau-EEE",
        "referencing_layer": "Form_EEE_452204ff_960b_4275_b605_b8f36419eba9",
        "referencing_field": "ID_EVEN",
        "referenced_layer": "Form_Ponceau_78f94aef_d633_46bc_9495_e39a24fc19bb",
        "referenced_field": "ID_Ponceau",
    },
    {
        "name": "Ponceau-Erosion",
        "referencing_layer": "Form_Erosion_2dead986_71fd_4905_bdd9_0eb7be181e1a",
        "referencing_field": "ID_EVEN",
        "referenced_layer": "Form_Ponceau_78f94aef_d633_46bc_9495_e39a24fc19bb",
        "referenced_field": "ID_Ponceau",
    },
    {
        "name": "CoursEau-Erosion",
        "referencing_layer": "Form_Erosion_2dead986_71fd_4905_bdd9_0eb7be181e1a",
        "referencing_field": "ID_EVEN",
        "referenced_layer": "Form_CaractCoursEau_9c3a3414_71a5_4ea5_86fc_4382afe9cdf3",
        "referenced_field": "ID_Caract",
    },
    {
        "name": "Formulaire Erosion",
        "referencing_layer": "Form_Erosion_2dead986_71fd_4905_bdd9_0eb7be181e1a",
        "referencing_field": "ID_EVEN",
        "referenced_layer": "Evenement_ee0f416a_414c_4808_90c1_361faec47bc2",
        "referenced_field": "ID_EVEN",
    },
    {
        "name": "Goutt-Erosion",
        "referencing_layer": "Form_Erosion_2dead986_71fd_4905_bdd9_0eb7be181e1a",
        "referencing_field": "ID_EVEN",
        "referenced_layer": "Form_Goutt_88041732_7273_4c75_87c0_06ea29015478",
        "referenced_field": "ID_Goutt",
    },
]

for rel in relations:
    relation = QgsRelation()
    relation.setId(str(uuid.uuid4()))
    relation.setName(rel["name"])
    relation.setReferencingLayer(rel["referencing_layer"])
    relation.setReferencedLayer(rel["referenced_layer"])
    relation.addFieldPair(rel["referencing_field"], rel["referenced_field"])
    relation.setStrength(QgsRelation.Composition)
    
    # Ajoute la relation au projet
    QgsProject.instance().relationManager().addRelation(relation)
    print(f"Relation '{rel['name']}' ajoutée.")
