<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" version="3.40.11-Bratislava" styleCategories="LayerConfiguration|Fields|Forms">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <fieldConfiguration>
    <field name="fid" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="ID_EVEN" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="ID_OBS" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="Utilisateur" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="type_point" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="ID_Employ" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="true" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option name="Group" type="invalid"/>
            <Option value="ID_Employ" name="Key" type="QString"/>
            <Option value="Tbl_Employes_a3414788_4aa2_4263_b995_0b5ca9d3112d" name="Layer" type="QString"/>
            <Option value="Tbl_Employes" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='robvq' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='robvq' sslmode=require key='ID_Employ' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_Employes_V&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="Nom_Empl" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="ID_Proprio" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="ID_Proj" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="false" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option value=" &quot;Prj_Actif&quot; = 1" name="FilterExpression" type="QString"/>
            <Option name="Group" type="invalid"/>
            <Option value="ID_Proj" name="Key" type="QString"/>
            <Option value="Tbl_Projets_23cd3c1a_b8fb_4844_b882_f39ca17402e6" name="Layer" type="QString"/>
            <Option value="Tbl_Projets" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='robvq' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='robvq' sslmode=require key='ID_Proj' checkPrimaryKeyUnicity='0' table=&quot;Tbl_Projets_V&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="false" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="Nom_Proj" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="Heure" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="HH:mm:ss" name="display_format" type="QString"/>
            <Option value="HH:mm:ss" name="field_format" type="QString"/>
            <Option value="false" name="field_format_overwrite" type="bool"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="date_even" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="yyyy-MM-dd" name="display_format" type="QString"/>
            <Option value="yyyy-MM-dd" name="field_format" type="QString"/>
            <Option value="false" name="field_format_overwrite" type="bool"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="type_even" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="false" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option name="Group" type="invalid"/>
            <Option value="ID_TypeObs" name="Key" type="QString"/>
            <Option value="Tbl_TypeObs_1dfe9af3_a7f2_40db_bf17_b7a221d830f5" name="Layer" type="QString"/>
            <Option value="Tbl_TypeObs" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='robvq' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='robvq' sslmode=require key='ID_TypeObs' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_TypeObs&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="Type" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="ID_Licence" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="Proprio_donnee" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="Prive" configurationFlags="NoFlag">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowNullState" type="bool"/>
            <Option value="1" name="CheckedState" type="QString"/>
            <Option value="0" name="TextDisplayMethod" type="int"/>
            <Option value="0" name="UncheckedState" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_act" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option name="Group" type="invalid"/>
            <Option value="id_act" name="Key" type="QString"/>
            <Option value="Form_ActDetection_f963ab89_ff02_4cf4_bd55_952187bf9380" name="Layer" type="QString"/>
            <Option value="Form_ActDetection" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='robvq' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='robvq' sslmode=require key='id_act' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Form_ActDetection_V&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="nom_site" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="courriel" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="regne" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option name="Group" type="invalid"/>
            <Option value="id_regne" name="Key" type="QString"/>
            <Option value="Tbl_Regne_71e8524c_a716_4fa3_91db_45ac2e87843f" name="Layer" type="QString"/>
            <Option value="Tbl_Regne" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='robvq' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='robvq' sslmode=require key='id_regne' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_Regne&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="precision" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="site" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="zgie" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option name="Group" type="invalid"/>
            <Option value="id_zgie" name="Key" type="QString"/>
            <Option value="Tbl_ZGIE_40def26e_54ec_41c7_a5bf_f56f563c282f" name="Layer" type="QString"/>
            <Option value="Tbl_ZGIE" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='robvq' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='robvq' sslmode=require key='id_zgie' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_ZGIE&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="true" name="UseCompleter" type="bool"/>
            <Option value="valeur" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="region" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option name="Group" type="invalid"/>
            <Option value="ID_Region" name="Key" type="QString"/>
            <Option value="Tbl_RegionAdmin_15a26713_71a6_4138_89c2_cec20807082c" name="Layer" type="QString"/>
            <Option value="Tbl_RegionAdmin" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='robvq' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='robvq' sslmode=require key='ID_Region' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_RegionAdmin&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="Region" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="code_regi" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option value="ID_Region" name="Key" type="QString"/>
            <Option value="Tbl_RegionAdmin_15a26713_71a6_4138_89c2_cec20807082c" name="Layer" type="QString"/>
            <Option value="Tbl_RegionAdmin" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='ID_Region' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_RegionAdmin&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="false" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="code" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="Munic" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option name="Group" type="invalid"/>
            <Option value="ID_Muni" name="Key" type="QString"/>
            <Option value="Tbl_Muni_1399223a_f816_49d4_a51e_236c23d10608" name="Layer" type="QString"/>
            <Option value="Tbl_Muni" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='robvq' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='robvq' sslmode=require key='ID_Muni' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_Muni&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="true" name="UseCompleter" type="bool"/>
            <Option value="municipalite" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="mrc" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option value="ID_Muni" name="Key" type="QString"/>
            <Option value="Tbl_Muni_1399223a_f816_49d4_a51e_236c23d10608" name="Layer" type="QString"/>
            <Option value="Tbl_Muni" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='ID_Muni' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_Muni&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="true" name="UseCompleter" type="bool"/>
            <Option value="mrc" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="Respo" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option value="&quot;valeur&quot; IS NOT '11'" name="FilterExpression" type="QString"/>
            <Option name="Group" type="invalid"/>
            <Option value="id_respotyp" name="Key" type="QString"/>
            <Option value="EEE_RespoTyp_31539860_97aa_482b_b176_4077b47828d9" name="Layer" type="QString"/>
            <Option value="EEE_RespoTyp" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='robvq' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='robvq' sslmode=require key='id_respotyp' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;EEE_RespoTyp&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="Milieu" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option name="Group" type="invalid"/>
            <Option value="ID_Milieu" name="Key" type="QString"/>
            <Option value="Tbl_Milieu_b6ad0f17_7842_458c_8c48_ee2474410b52" name="Layer" type="QString"/>
            <Option value="Tbl_Milieu" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='ID_Milieu' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_Milieu&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="Valeur" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="Repere" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="Contrainte" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option name="Group" type="invalid"/>
            <Option value="id_contrainte" name="Key" type="QString"/>
            <Option value="EEE_Contrainte_1902abb9_26d3_47b7_b217_5a44b42908dc" name="Layer" type="QString"/>
            <Option value="EEE_Contrainte" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='id_contrainte' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;EEE_Contrainte&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="categorie" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option value="CASE&#xa;WHEN current_value('regne') = 'Tbl_{ef92689e-0fe9-4021-91d6-2637f01d11bd}'&#xa;THEN &quot;id_cat&quot; in&#xa;('Tbl_{587854fd-ec84-418a-9fb8-d6b4ce6a32f2}', 'Tbl_{45222f13-5b7c-4f1b-9043-06ca1ef38b44}', 'Tbl_{dc269804-e66d-4d2a-91d7-632f04ce4593}', 'Tbl_{d137ffdb-aefd-4c12-8cfd-da54084096a3}', 'Tbl_{2de9aeae-ccf3-45dd-a26f-bdaedbe4b8ed}', 'Tbl_{6ff2dc91-d454-4038-946a-e1c504db25fe}', 'Tbl_{fe39651e-b38b-4d3e-9dc6-6fa74e7cfdd8}', 'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}', 'Tbl_{f447781e-12de-498f-bfa6-f9c829467c0c}', 'Tbl_{eb1ec7db-3074-4c8c-b2a2-77092b971955}')&#xa;WHEN current_value('regne') = 'Tbl_{7fc2b0f3-4f6d-49b7-983b-c67765ef0ad9}'&#xa;THEN &quot;id_cat&quot; in&#xa;('Tbl_{d5e2cbe3-66d8-44a9-a8f2-13bf51711f70}', 'Tbl_{21c1ba0d-3b3f-4a0f-ad82-70b62a21a670}', 'Tbl_{1fce8c5b-e2ee-42ff-b356-4af67b09b80a}', 'Tbl_{949e020f-cb5d-4ef5-87be-6aa443c7432a}', 'Tbl_{d137ffdb-aefd-4c12-8cfd-da54084096a3}')&#xa;WHEN current_value('regne') = 'Tbl_{2076ade0-6cac-42aa-b64a-a1170d0391a0}'&#xa;THEN &quot;id_cat&quot; in ('Tbl_{a941f2f1-d80e-40b3-83bc-ad4f19557e43}')&#xa;WHEN current_value('regne') = 'Tbl_{45d2116c-b35a-4c39-8b9e-13a50b487720}'&#xa;THEN &quot;id_cat&quot; = 'Tbl_{d137ffdb-aefd-4c12-8cfd-da54084096a3}'&#xa;ELSE &quot;id_cat&quot; in&#xa;('Tbl_{587854fd-ec84-418a-9fb8-d6b4ce6a32f2}',&#xa;'Tbl_{45222f13-5b7c-4f1b-9043-06ca1ef38b44}',&#xa;'Tbl_{dc269804-e66d-4d2a-91d7-632f04ce4593}',&#xa;'Tbl_{a941f2f1-d80e-40b3-83bc-ad4f19557e43}',&#xa;'Tbl_{d5e2cbe3-66d8-44a9-a8f2-13bf51711f70}',&#xa;'Tbl_{21c1ba0d-3b3f-4a0f-ad82-70b62a21a670}',&#xa;'Tbl_{1fce8c5b-e2ee-42ff-b356-4af67b09b80a}',&#xa;'Tbl_{949e020f-cb5d-4ef5-87be-6aa443c7432a}',&#xa;'Tbl_{d137ffdb-aefd-4c12-8cfd-da54084096a3}',&#xa;'Tbl_{2de9aeae-ccf3-45dd-a26f-bdaedbe4b8ed}',&#xa;'Tbl_{6ff2dc91-d454-4038-946a-e1c504db25fe}',&#xa;'Tbl_{fe39651e-b38b-4d3e-9dc6-6fa74e7cfdd8}',&#xa;'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}',&#xa;'Tbl_{f447781e-12de-498f-bfa6-f9c829467c0c}',&#xa;'Tbl_{eb1ec7db-3074-4c8c-b2a2-77092b971955}')&#xa;END" name="FilterExpression" type="QString"/>
            <Option name="Group" type="invalid"/>
            <Option value="id_cat" name="Key" type="QString"/>
            <Option value="Tbl_CatEspece_ac583172_1754_4d60_8bb4_b68bb9f8aa36" name="Layer" type="QString"/>
            <Option value="Tbl_CatEspece" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='id_cat' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_CatEspece&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="EEE_Type" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option value="&quot;categorie&quot; = current_value('categorie')&#xa;or&#xa;&quot;ID_SPP&quot; = 'SPP_{ecd8b1b0-aa89-4e6a-b924-74d55e2ca196}'" name="FilterExpression" type="QString"/>
            <Option name="Group" type="invalid"/>
            <Option value="ID_SPP" name="Key" type="QString"/>
            <Option value="Liste_EspecesFlore20220316_Geofluence_GROBEC_2022_cf723f09_984a_4971_9451_1b11abc1479c" name="Layer" type="QString"/>
            <Option value="Tbl_EspecesFlore" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='robvq' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='robvq' sslmode=require key='id' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_EspecesFlore&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="Nom francais" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="lat_flore" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option name="Group" type="invalid"/>
            <Option value="ID_SPP" name="Key" type="QString"/>
            <Option value="Liste_EspecesFlore20220316_Geofluence_GROBEC_2022_cf723f09_984a_4971_9451_1b11abc1479c" name="Layer" type="QString"/>
            <Option value="Tbl_EspecesFlore" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='id' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_EspecesFlore&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="false" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="Nom latin" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="autre_sp" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="autre_nom_latin" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="SP_autre" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option value="&quot;Designation&quot; = 'EEE'" name="FilterExpression" type="QString"/>
            <Option value="ID_SPP" name="Key" type="QString"/>
            <Option value="Liste_EspecesFlore20220316_Geofluence_GROBEC_2022_cf723f09_984a_4971_9451_1b11abc1479c" name="Layer" type="QString"/>
            <Option value="Tbl_EspecesFlore" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='id' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_EspecesFlore&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="Nom francais" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="NbrVeg" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="&quot;description&quot;" name="Description" type="QString"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option value="id_nbrveg" name="Key" type="QString"/>
            <Option value="EEE_NbrVeg_1a7a85a5_a318_4ba2_96df_ae0410344802" name="Layer" type="QString"/>
            <Option value="EEE_NbrVeg" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='id_nbrveg' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;EEE_NbrVeg&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="EEE_Densite" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option name="Group" type="invalid"/>
            <Option value="id_recouv" name="Key" type="QString"/>
            <Option value="EEE_Recouv_2b8f521c_4d95_4e10_a0b6_9eb39aec49f9" name="Layer" type="QString"/>
            <Option value="EEE_Recouv" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='robvq' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='robvq' sslmode=require key='id_recouv' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;EEE_Recouv&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="Superf_m2" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="StadeDev" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option value="id_stadedev" name="Key" type="QString"/>
            <Option value="EEE_StadeDev_ec07018e_9ae6_4fa0_90ee_115910d56006" name="Layer" type="QString"/>
            <Option value="EEE_StadeDev" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='id_stadedev' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;EEE_StadeDev&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="site_autre_stade" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option value="ID_OuiNon" name="Key" type="QString"/>
            <Option value="Tbl_OuiNon_1bd7132f_b116_43c8_857e_4234c836cb66" name="Layer" type="QString"/>
            <Option value="Tbl_OuiNon" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='ID_OuiNon' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_OuiNon&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="Valeur" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="site_stade_1" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option value="id_stadedev" name="Key" type="QString"/>
            <Option value="EEE_StadeDev_ec07018e_9ae6_4fa0_90ee_115910d56006" name="Layer" type="QString"/>
            <Option value="EEE_StadeDev" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='id_stadedev' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;EEE_StadeDev&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="site_stade_2" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option value="id_stadedev" name="Key" type="QString"/>
            <Option value="EEE_StadeDev_ec07018e_9ae6_4fa0_90ee_115910d56006" name="Layer" type="QString"/>
            <Option value="EEE_StadeDev" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='id_stadedev' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;EEE_StadeDev&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="site_stade_3" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option value="id_stadedev" name="Key" type="QString"/>
            <Option value="EEE_StadeDev_ec07018e_9ae6_4fa0_90ee_115910d56006" name="Layer" type="QString"/>
            <Option value="EEE_StadeDev" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='id_stadedev' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;EEE_StadeDev&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="site_stade_4" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option value="id_stadedev" name="Key" type="QString"/>
            <Option value="EEE_StadeDev_ec07018e_9ae6_4fa0_90ee_115910d56006" name="Layer" type="QString"/>
            <Option value="EEE_StadeDev" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='id_stadedev' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;EEE_StadeDev&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="site_stade_5" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option value="id_stadedev" name="Key" type="QString"/>
            <Option value="EEE_StadeDev_ec07018e_9ae6_4fa0_90ee_115910d56006" name="Layer" type="QString"/>
            <Option value="EEE_StadeDev" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='id_stadedev' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;EEE_StadeDev&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="cause_probag" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option name="Group" type="invalid"/>
            <Option value="id_propag" name="Key" type="QString"/>
            <Option value="EEE_Propag_7104e33c_dc6f_4451_bdca_926798ff21ac" name="Layer" type="QString"/>
            <Option value="EEE_Propag" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='id_propag' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;EEE_Propag&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="hote" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="Trt_av" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option value="ID_OuiNon" name="Key" type="QString"/>
            <Option value="Tbl_OuiNon_1bd7132f_b116_43c8_857e_4234c836cb66" name="Layer" type="QString"/>
            <Option value="Tbl_OuiNon" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='ID_OuiNon' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;Tbl_OuiNon&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="Valeur" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="Trt_avQui" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="Trt_avType" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option value="id_trt_avtype" name="Key" type="QString"/>
            <Option value="EEE_Trt_avType_25b095ae_5630_4164_b70b_a5e0cca57f93" name="Layer" type="QString"/>
            <Option value="EEE_Trt_avType" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='id_trt_avtype' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;EEE_Trt_avType&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="TraitRecom" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" type="invalid"/>
            <Option value="id_trt_avtype" name="Key" type="QString"/>
            <Option value="EEE_Trt_avType_25b095ae_5630_4164_b70b_a5e0cca57f93" name="Layer" type="QString"/>
            <Option value="EEE_Trt_avType" name="LayerName" type="QString"/>
            <Option value="postgres" name="LayerProviderName" type="QString"/>
            <Option value="dbname='geofluence' host=robvq-geofluence-database-do-user-9627250-0.b.db.ondigitalocean.com port=25060 user='geof_general' sslmode=require key='id_trt_avtype' checkPrimaryKeyUnicity='1' table=&quot;public&quot;.&quot;EEE_Trt_avType&quot;" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="description" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="EEE_Comment" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo1" configurationFlags="NoFlag">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option value="1" name="DocumentViewer" type="int"/>
            <Option value="0" name="DocumentViewerHeight" type="int"/>
            <Option value="0" name="DocumentViewerWidth" type="int"/>
            <Option value="true" name="FileWidget" type="bool"/>
            <Option value="true" name="FileWidgetButton" type="bool"/>
            <Option name="FileWidgetFilter" type="invalid"/>
            <Option name="PropertyCollection" type="Map">
              <Option name="name" type="invalid"/>
              <Option name="properties" type="invalid"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
            <Option value="1" name="RelativeStorage" type="int"/>
            <Option name="StorageAuthConfigId" type="invalid"/>
            <Option value="0" name="StorageMode" type="int"/>
            <Option name="StorageType" type="invalid"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="fid" name="" index="0"/>
    <alias field="ID_EVEN" name="" index="1"/>
    <alias field="ID_OBS" name="" index="2"/>
    <alias field="Utilisateur" name="" index="3"/>
    <alias field="type_point" name="" index="4"/>
    <alias field="ID_Employ" name="Employé(s) responsable(s)" index="5"/>
    <alias field="ID_Proprio" name="" index="6"/>
    <alias field="ID_Proj" name="Projet" index="7"/>
    <alias field="Heure" name="Heure" index="8"/>
    <alias field="date_even" name="Date" index="9"/>
    <alias field="type_even" name="Type d'observation" index="10"/>
    <alias field="ID_Licence" name="" index="11"/>
    <alias field="Proprio_donnee" name="" index="12"/>
    <alias field="Prive" name="Cette observatione est-elle privée?" index="13"/>
    <alias field="id_act" name="Si l'observation est liée à une activité de détection, sélectionnez le site" index="14"/>
    <alias field="courriel" name="Adresse courriel de l'organisme producteur" index="15"/>
    <alias field="regne" name="Règne de l'espèce à documenter" index="16"/>
    <alias field="precision" name="Précision de la donnée géoréférencée" index="17"/>
    <alias field="site" name="Nom du site ou du plan d'eau" index="18"/>
    <alias field="zgie" name="Zone de gestion intégrée où se situe le site" index="19"/>
    <alias field="region" name="Région administrative" index="20"/>
    <alias field="code_regi" name="Code de la région" index="21"/>
    <alias field="Munic" name="Municipalité où se situe le site" index="22"/>
    <alias field="mrc" name="Nom de la municipalité régionale de comté (MRC)" index="23"/>
    <alias field="Respo" name="Type d'organisation responsable du site" index="24"/>
    <alias field="Milieu" name="Type de milieu (choisir le plus contraignant présent)" index="25"/>
    <alias field="Repere" name="Repères, si nécessaires" index="26"/>
    <alias field="Contrainte" name="Contraintes" index="27"/>
    <alias field="categorie" name="Catégorie (ou groupe) d'espèces" index="28"/>
    <alias field="EEE_Type" name="Nom français de l'espèce présente" index="29"/>
    <alias field="lat_flore" name="Nom latin de l'espèce" index="30"/>
    <alias field="autre_sp" name="Nom français de l'espèce" index="31"/>
    <alias field="autre_nom_latin" name="Nom latin de l'espèce" index="32"/>
    <alias field="SP_autre" name="Autre espèce observée" index="33"/>
    <alias field="NbrVeg" name="Nombre d'individus recensés" index="34"/>
    <alias field="EEE_Densite" name="Pourcentage de recouvrement de la colonie" index="35"/>
    <alias field="Superf_m2" name="Superficie de la colonie – Espèces floristiques (m²)" index="36"/>
    <alias field="StadeDev" name="Stade de développement le plus avancé" index="37"/>
    <alias field="site_autre_stade" name="Présence d'autres stades de développement?" index="38"/>
    <alias field="site_stade_1" name="Stade 1" index="39"/>
    <alias field="site_stade_2" name="Stade 2" index="40"/>
    <alias field="site_stade_3" name="Stade 3" index="41"/>
    <alias field="site_stade_4" name="Stade 4" index="42"/>
    <alias field="site_stade_5" name="Stade 5" index="43"/>
    <alias field="cause_probag" name="Cause raisonnable de la propagation" index="44"/>
    <alias field="hote" name="Espèce hôte" index="45"/>
    <alias field="Trt_av" name="Est-ce qu'un contrôle a été réalisé sur le site ?" index="46"/>
    <alias field="Trt_avQui" name="Nom du responsable de l'intervention passée" index="47"/>
    <alias field="Trt_avType" name="Type d'intervention principale passé" index="48"/>
    <alias field="TraitRecom" name="Traitement recommandé" index="49"/>
    <alias field="EEE_Comment" name="Commentaires" index="50"/>
    <alias field="photo1" name="Ajouter photos" index="51"/>
  </aliases>
  <splitPolicies>
    <policy field="fid" policy="DefaultValue"/>
    <policy field="ID_EVEN" policy="DefaultValue"/>
    <policy field="ID_OBS" policy="DefaultValue"/>
    <policy field="Utilisateur" policy="DefaultValue"/>
    <policy field="type_point" policy="DefaultValue"/>
    <policy field="ID_Employ" policy="DefaultValue"/>
    <policy field="ID_Proprio" policy="DefaultValue"/>
    <policy field="ID_Proj" policy="DefaultValue"/>
    <policy field="Heure" policy="DefaultValue"/>
    <policy field="date_even" policy="DefaultValue"/>
    <policy field="type_even" policy="DefaultValue"/>
    <policy field="ID_Licence" policy="DefaultValue"/>
    <policy field="Proprio_donnee" policy="DefaultValue"/>
    <policy field="Prive" policy="DefaultValue"/>
    <policy field="id_act" policy="DefaultValue"/>
    <policy field="courriel" policy="DefaultValue"/>
    <policy field="regne" policy="DefaultValue"/>
    <policy field="precision" policy="DefaultValue"/>
    <policy field="site" policy="DefaultValue"/>
    <policy field="zgie" policy="DefaultValue"/>
    <policy field="region" policy="DefaultValue"/>
    <policy field="code_regi" policy="DefaultValue"/>
    <policy field="Munic" policy="DefaultValue"/>
    <policy field="mrc" policy="DefaultValue"/>
    <policy field="Respo" policy="DefaultValue"/>
    <policy field="Milieu" policy="DefaultValue"/>
    <policy field="Repere" policy="DefaultValue"/>
    <policy field="Contrainte" policy="DefaultValue"/>
    <policy field="categorie" policy="DefaultValue"/>
    <policy field="EEE_Type" policy="DefaultValue"/>
    <policy field="lat_flore" policy="DefaultValue"/>
    <policy field="autre_sp" policy="DefaultValue"/>
    <policy field="autre_nom_latin" policy="DefaultValue"/>
    <policy field="SP_autre" policy="DefaultValue"/>
    <policy field="NbrVeg" policy="DefaultValue"/>
    <policy field="EEE_Densite" policy="DefaultValue"/>
    <policy field="Superf_m2" policy="DefaultValue"/>
    <policy field="StadeDev" policy="DefaultValue"/>
    <policy field="site_autre_stade" policy="DefaultValue"/>
    <policy field="site_stade_1" policy="DefaultValue"/>
    <policy field="site_stade_2" policy="DefaultValue"/>
    <policy field="site_stade_3" policy="DefaultValue"/>
    <policy field="site_stade_4" policy="DefaultValue"/>
    <policy field="site_stade_5" policy="DefaultValue"/>
    <policy field="cause_probag" policy="DefaultValue"/>
    <policy field="hote" policy="DefaultValue"/>
    <policy field="Trt_av" policy="DefaultValue"/>
    <policy field="Trt_avQui" policy="DefaultValue"/>
    <policy field="Trt_avType" policy="DefaultValue"/>
    <policy field="TraitRecom" policy="DefaultValue"/>
    <policy field="EEE_Comment" policy="DefaultValue"/>
    <policy field="photo1" policy="DefaultValue"/>
  </splitPolicies>
  <duplicatePolicies>
    <policy field="fid" policy="Duplicate"/>
    <policy field="ID_EVEN" policy="Duplicate"/>
    <policy field="ID_OBS" policy="Duplicate"/>
    <policy field="Utilisateur" policy="Duplicate"/>
    <policy field="type_point" policy="Duplicate"/>
    <policy field="ID_Employ" policy="Duplicate"/>
    <policy field="ID_Proprio" policy="Duplicate"/>
    <policy field="ID_Proj" policy="Duplicate"/>
    <policy field="Heure" policy="Duplicate"/>
    <policy field="date_even" policy="Duplicate"/>
    <policy field="type_even" policy="Duplicate"/>
    <policy field="ID_Licence" policy="Duplicate"/>
    <policy field="Proprio_donnee" policy="Duplicate"/>
    <policy field="Prive" policy="Duplicate"/>
    <policy field="id_act" policy="Duplicate"/>
    <policy field="courriel" policy="Duplicate"/>
    <policy field="regne" policy="Duplicate"/>
    <policy field="precision" policy="Duplicate"/>
    <policy field="site" policy="Duplicate"/>
    <policy field="zgie" policy="Duplicate"/>
    <policy field="region" policy="Duplicate"/>
    <policy field="code_regi" policy="Duplicate"/>
    <policy field="Munic" policy="Duplicate"/>
    <policy field="mrc" policy="Duplicate"/>
    <policy field="Respo" policy="Duplicate"/>
    <policy field="Milieu" policy="Duplicate"/>
    <policy field="Repere" policy="Duplicate"/>
    <policy field="Contrainte" policy="Duplicate"/>
    <policy field="categorie" policy="Duplicate"/>
    <policy field="EEE_Type" policy="Duplicate"/>
    <policy field="lat_flore" policy="Duplicate"/>
    <policy field="autre_sp" policy="Duplicate"/>
    <policy field="autre_nom_latin" policy="Duplicate"/>
    <policy field="SP_autre" policy="Duplicate"/>
    <policy field="NbrVeg" policy="Duplicate"/>
    <policy field="EEE_Densite" policy="Duplicate"/>
    <policy field="Superf_m2" policy="Duplicate"/>
    <policy field="StadeDev" policy="Duplicate"/>
    <policy field="site_autre_stade" policy="Duplicate"/>
    <policy field="site_stade_1" policy="Duplicate"/>
    <policy field="site_stade_2" policy="Duplicate"/>
    <policy field="site_stade_3" policy="Duplicate"/>
    <policy field="site_stade_4" policy="Duplicate"/>
    <policy field="site_stade_5" policy="Duplicate"/>
    <policy field="cause_probag" policy="Duplicate"/>
    <policy field="hote" policy="Duplicate"/>
    <policy field="Trt_av" policy="Duplicate"/>
    <policy field="Trt_avQui" policy="Duplicate"/>
    <policy field="Trt_avType" policy="Duplicate"/>
    <policy field="TraitRecom" policy="Duplicate"/>
    <policy field="EEE_Comment" policy="Duplicate"/>
    <policy field="photo1" policy="Duplicate"/>
  </duplicatePolicies>
  <defaults>
    <default expression="'EEE_'+uuid()" field="fid" applyOnUpdate="0"/>
    <default expression="'Even_'+uuid()" field="ID_EVEN" applyOnUpdate="0"/>
    <default expression="'Obs_'+uuid()" field="ID_OBS" applyOnUpdate="0"/>
    <default expression="aggregate('Org_Resp','array_agg',&quot;utilisateur&quot;)[0]" field="Utilisateur" applyOnUpdate="0"/>
    <default expression="'Point'" field="type_point" applyOnUpdate="0"/>
    <default expression="" field="ID_Employ" applyOnUpdate="0"/>
    <default expression="aggregate('Org_Resp','array_agg',&quot;utilisateur&quot;)[0]" field="ID_Proprio" applyOnUpdate="0"/>
    <default expression="" field="ID_Proj" applyOnUpdate="0"/>
    <default expression="substr(to_string(to_time(now())),1,8)" field="Heure" applyOnUpdate="0"/>
    <default expression="now()" field="date_even" applyOnUpdate="0"/>
    <default expression="attribute(get_feature('Tbl_TypeObs','Type','Observation'),'ID_TypeObs')" field="type_even" applyOnUpdate="0"/>
    <default expression="@Licence" field="ID_Licence" applyOnUpdate="0"/>
    <default expression="aggregate('Org_Resp','array_agg',&quot;utilisateur&quot;)[0]" field="Proprio_donnee" applyOnUpdate="0"/>
    <default expression="0" field="Prive" applyOnUpdate="0"/>
    <default expression="" field="id_act" applyOnUpdate="0"/>
    <default expression="CASE&#xd;&#xa;WHEN &quot;id_act&quot; is not NULL&#xd;&#xa;THEN attribute(get_feature('Form_ActDetection', 'id_act', &quot;id_act&quot;), 'courriel')&#xd;&#xa;ELSE &quot;courriel&quot;&#xd;&#xa;END" field="courriel" applyOnUpdate="1"/>
    <default expression="'Tbl_{7fc2b0f3-4f6d-49b7-983b-c67765ef0ad9}'" field="regne" applyOnUpdate="0"/>
    <default expression="" field="precision" applyOnUpdate="0"/>
    <default expression="case&#xd;&#xa;when &quot;id_act&quot; is not NULL&#xd;&#xa;then attribute(get_feature('Form_ActDetection', 'id_act', &quot;id_act&quot;), 'nom_site')&#xd;&#xa;else &quot;site&quot;&#xd;&#xa;end" field="site" applyOnUpdate="1"/>
    <default expression="" field="zgie" applyOnUpdate="0"/>
    <default expression="CASE&#xd;&#xa;WHEN &quot;id_act&quot; is not NULL&#xd;&#xa;THEN attribute(get_feature('Form_ActDetection', 'id_act', &quot;id_act&quot;), 'region')&#xd;&#xa;ELSE &quot;region&quot;&#xd;&#xa;END" field="region" applyOnUpdate="1"/>
    <default expression="&quot;region&quot;" field="code_regi" applyOnUpdate="1"/>
    <default expression="CASE&#xd;&#xa;WHEN &quot;id_act&quot; is not NULL&#xd;&#xa;THEN attribute(get_feature('Form_ActDetection', 'id_act', &quot;id_act&quot;), 'munic')&#xd;&#xa;ELSE &quot;Munic&quot;&#xd;&#xa;END" field="Munic" applyOnUpdate="1"/>
    <default expression="CASE&#xd;&#xa;WHEN &quot;id_act&quot; is not NULL&#xd;&#xa;THEN attribute(get_feature('Form_ActDetection', 'id_act', &quot;id_act&quot;), 'munic')&#xd;&#xa;ELSE &quot;Munic&quot;&#xd;&#xa;END" field="mrc" applyOnUpdate="1"/>
    <default expression="'EEE_{ed3e1e6e-b1a9-4b6f-bf21-030cc632ce16}'" field="Respo" applyOnUpdate="0"/>
    <default expression="" field="Milieu" applyOnUpdate="0"/>
    <default expression="" field="Repere" applyOnUpdate="0"/>
    <default expression="" field="Contrainte" applyOnUpdate="0"/>
    <default expression="CASE&#xd;&#xa;WHEN &quot;regne&quot; = 'Tbl_{2076ade0-6cac-42aa-b64a-a1170d0391a0}'&#xd;&#xa;THEN 'Tbl_{a941f2f1-d80e-40b3-83bc-ad4f19557e43}'&#xd;&#xa;WHEN &quot;regne&quot; = 'Tbl_{45d2116c-b35a-4c39-8b9e-13a50b487720}'&#xd;&#xa;THEN 'Tbl_{d137ffdb-aefd-4c12-8cfd-da54084096a3}'&#xd;&#xa;ELSE &quot;categorie&quot;&#xd;&#xa;END" field="categorie" applyOnUpdate="1"/>
    <default expression="CASE&#xd;&#xa;WHEN &quot;categorie&quot; = 'Tbl_{d137ffdb-aefd-4c12-8cfd-da54084096a3}'&#xd;&#xa;THEN 'SPP_{ecd8b1b0-aa89-4e6a-b924-74d55e2ca196}'&#xd;&#xa;ELSE &quot;EEE_Type&quot;&#xd;&#xa;END" field="EEE_Type" applyOnUpdate="1"/>
    <default expression="&quot;EEE_Type&quot;" field="lat_flore" applyOnUpdate="1"/>
    <default expression="" field="autre_sp" applyOnUpdate="0"/>
    <default expression="" field="autre_nom_latin" applyOnUpdate="0"/>
    <default expression="" field="SP_autre" applyOnUpdate="0"/>
    <default expression="" field="NbrVeg" applyOnUpdate="0"/>
    <default expression="" field="EEE_Densite" applyOnUpdate="0"/>
    <default expression="ROUND(if(attribute(get_feature('Evenement','ID_EVEN',&quot;ID_EVEN&quot;),'ID_OBS_S') is not null,area(geometry(get_feature('Observation_Polygone','ID_OBS',attribute(get_feature('Evenement','ID_EVEN',&quot;ID_EVEN&quot;),'ID_OBS_S')))),0),2)" field="Superf_m2" applyOnUpdate="1"/>
    <default expression="" field="StadeDev" applyOnUpdate="0"/>
    <default expression="" field="site_autre_stade" applyOnUpdate="0"/>
    <default expression="" field="site_stade_1" applyOnUpdate="0"/>
    <default expression="" field="site_stade_2" applyOnUpdate="0"/>
    <default expression="" field="site_stade_3" applyOnUpdate="0"/>
    <default expression="" field="site_stade_4" applyOnUpdate="0"/>
    <default expression="" field="site_stade_5" applyOnUpdate="0"/>
    <default expression="" field="cause_probag" applyOnUpdate="0"/>
    <default expression="" field="hote" applyOnUpdate="0"/>
    <default expression="" field="Trt_av" applyOnUpdate="0"/>
    <default expression="" field="Trt_avQui" applyOnUpdate="0"/>
    <default expression="" field="Trt_avType" applyOnUpdate="0"/>
    <default expression="" field="TraitRecom" applyOnUpdate="0"/>
    <default expression="" field="EEE_Comment" applyOnUpdate="0"/>
    <default expression="" field="photo1" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="fid" constraints="3" notnull_strength="1" unique_strength="1" exp_strength="0"/>
    <constraint field="ID_EVEN" constraints="1" notnull_strength="1" unique_strength="0" exp_strength="0"/>
    <constraint field="ID_OBS" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="Utilisateur" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="type_point" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="ID_Employ" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="ID_Proprio" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="ID_Proj" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="Heure" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="date_even" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="type_even" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="ID_Licence" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="Proprio_donnee" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="Prive" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="id_act" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="courriel" constraints="4" notnull_strength="0" unique_strength="0" exp_strength="2"/>
    <constraint field="regne" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="precision" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="site" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="zgie" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="region" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="code_regi" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="Munic" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="mrc" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="Respo" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="Milieu" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="Repere" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="Contrainte" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="categorie" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="EEE_Type" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="lat_flore" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="autre_sp" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="autre_nom_latin" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="SP_autre" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="NbrVeg" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="EEE_Densite" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="Superf_m2" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="StadeDev" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="site_autre_stade" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="site_stade_1" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="site_stade_2" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="site_stade_3" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="site_stade_4" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="site_stade_5" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="cause_probag" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="hote" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="Trt_av" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="Trt_avQui" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="Trt_avType" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="TraitRecom" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="EEE_Comment" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint field="photo1" constraints="0" notnull_strength="0" unique_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="fid"/>
    <constraint exp="" desc="" field="ID_EVEN"/>
    <constraint exp="" desc="" field="ID_OBS"/>
    <constraint exp="" desc="" field="Utilisateur"/>
    <constraint exp="" desc="" field="type_point"/>
    <constraint exp="" desc="" field="ID_Employ"/>
    <constraint exp="" desc="" field="ID_Proprio"/>
    <constraint exp="" desc="" field="ID_Proj"/>
    <constraint exp="" desc="" field="Heure"/>
    <constraint exp="" desc="" field="date_even"/>
    <constraint exp="" desc="" field="type_even"/>
    <constraint exp="" desc="" field="ID_Licence"/>
    <constraint exp="" desc="" field="Proprio_donnee"/>
    <constraint exp="" desc="" field="Prive"/>
    <constraint exp="" desc="" field="id_act"/>
    <constraint exp="regexp_match(&quot;courriel&quot;, '.*@.*')" desc="Vous devez saisir une adresse valide" field="courriel"/>
    <constraint exp="" desc="" field="regne"/>
    <constraint exp="" desc="" field="precision"/>
    <constraint exp="" desc="" field="site"/>
    <constraint exp="" desc="" field="zgie"/>
    <constraint exp="" desc="" field="region"/>
    <constraint exp="" desc="" field="code_regi"/>
    <constraint exp="" desc="" field="Munic"/>
    <constraint exp="" desc="" field="mrc"/>
    <constraint exp="" desc="" field="Respo"/>
    <constraint exp="" desc="" field="Milieu"/>
    <constraint exp="" desc="" field="Repere"/>
    <constraint exp="" desc="" field="Contrainte"/>
    <constraint exp="" desc="" field="categorie"/>
    <constraint exp="" desc="" field="EEE_Type"/>
    <constraint exp="" desc="" field="lat_flore"/>
    <constraint exp="" desc="" field="autre_sp"/>
    <constraint exp="" desc="" field="autre_nom_latin"/>
    <constraint exp="" desc="" field="SP_autre"/>
    <constraint exp="" desc="" field="NbrVeg"/>
    <constraint exp="" desc="" field="EEE_Densite"/>
    <constraint exp="" desc="" field="Superf_m2"/>
    <constraint exp="" desc="" field="StadeDev"/>
    <constraint exp="" desc="" field="site_autre_stade"/>
    <constraint exp="" desc="" field="site_stade_1"/>
    <constraint exp="" desc="" field="site_stade_2"/>
    <constraint exp="" desc="" field="site_stade_3"/>
    <constraint exp="" desc="" field="site_stade_4"/>
    <constraint exp="" desc="" field="site_stade_5"/>
    <constraint exp="" desc="" field="cause_probag"/>
    <constraint exp="" desc="" field="hote"/>
    <constraint exp="" desc="" field="Trt_av"/>
    <constraint exp="" desc="" field="Trt_avQui"/>
    <constraint exp="" desc="" field="Trt_avType"/>
    <constraint exp="" desc="" field="TraitRecom"/>
    <constraint exp="" desc="" field="EEE_Comment"/>
    <constraint exp="" desc="" field="photo1"/>
  </constraintExpressions>
  <expressionfields/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
Les formulaires QGIS peuvent avoir une fonction Python qui est appelée lorsque le formulaire est
ouvert.

Utilisez cette fonction pour ajouter une logique supplémentaire à vos formulaires.

Entrez le nom de la fonction dans le champ 
"Fonction d'initialisation Python".
Voici un exemple:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
    geom = feature.geometry()
    control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
      <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
    </labelStyle>
    <attributeEditorContainer collapsedExpressionEnabled="0" visibilityExpression="" visibilityExpressionEnabled="0" name="Type d'observation" showLabel="1" collapsedExpression="" verticalStretch="0" type="Tab" groupBox="0" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
      </labelStyle>
      <attributeEditorContainer collapsedExpressionEnabled="0" visibilityExpression="" visibilityExpressionEnabled="0" name="Renseignements sur l'événement" showLabel="1" collapsedExpression="" verticalStretch="0" type="GroupBox" groupBox="1" horizontalStretch="0" columnCount="1" collapsed="0">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
        </labelStyle>
        <attributeEditorField name="Prive" showLabel="1" index="13" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="ID_Employ" showLabel="1" index="5" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="courriel" showLabel="1" index="15" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="date_even" showLabel="1" index="9" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="Heure" showLabel="1" index="8" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="ID_Proj" showLabel="1" index="7" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="type_even" showLabel="1" index="10" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
      <attributeEditorContainer collapsedExpressionEnabled="0" visibilityExpression="" visibilityExpressionEnabled="0" name="Renseignement sur l'observation EEE" showLabel="1" collapsedExpression="" verticalStretch="0" type="GroupBox" groupBox="1" horizontalStretch="0" columnCount="1" collapsed="0">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
        </labelStyle>
        <attributeEditorContainer collapsedExpressionEnabled="0" visibilityExpression="&quot;id_act&quot; IS NULL" visibilityExpressionEnabled="1" backgroundColor="#ff726b" name="Il est recommandé de remplir un formulaire Activité de détection avant de réaliser une observation EEE" showLabel="1" collapsedExpression="" verticalStretch="0" type="GroupBox" groupBox="1" horizontalStretch="0" columnCount="1" collapsed="1">
          <labelStyle overrideLabelFont="1" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,1,0,0,0,0" style="" underline="0" bold="0" italic="1"/>
          </labelStyle>
        </attributeEditorContainer>
        <attributeEditorField name="id_act" showLabel="1" index="14" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="precision" showLabel="1" index="17" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="regne" showLabel="1" index="16" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer collapsedExpressionEnabled="0" visibilityExpression="&quot;ong_site&quot; = 1" visibilityExpressionEnabled="0" name="Site" showLabel="1" collapsedExpression="" verticalStretch="0" type="Tab" groupBox="0" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
      </labelStyle>
      <attributeEditorContainer collapsedExpressionEnabled="0" visibilityExpression="" visibilityExpressionEnabled="0" name="Localisation" showLabel="1" collapsedExpression="" verticalStretch="0" type="GroupBox" groupBox="1" horizontalStretch="0" columnCount="1" collapsed="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
        </labelStyle>
        <attributeEditorField name="site" showLabel="1" index="18" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="zgie" showLabel="1" index="19" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="region" showLabel="1" index="20" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="Munic" showLabel="1" index="22" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="mrc" showLabel="1" index="23" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="Respo" showLabel="1" index="24" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="Milieu" showLabel="1" index="25" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="Repere" showLabel="1" index="26" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="Contrainte" showLabel="1" index="27" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
      <attributeEditorContainer collapsedExpressionEnabled="0" visibilityExpression="" visibilityExpressionEnabled="0" name="Observations" showLabel="1" collapsedExpression="" verticalStretch="0" type="GroupBox" groupBox="1" horizontalStretch="0" columnCount="1" collapsed="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
        </labelStyle>
        <attributeEditorField name="categorie" showLabel="1" index="28" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="EEE_Type" showLabel="1" index="29" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="lat_flore" showLabel="1" index="30" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorContainer collapsedExpressionEnabled="0" visibilityExpression="&quot;EEE_Type&quot; = 'SPP_{ecd8b1b0-aa89-4e6a-b924-74d55e2ca196}'&#xd;" visibilityExpressionEnabled="1" backgroundColor="#d6dfc4" name="Préciser l'espèce autre" showLabel="1" collapsedExpression="" verticalStretch="0" type="GroupBox" groupBox="1" horizontalStretch="0" columnCount="1" collapsed="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
          <attributeEditorField name="autre_sp" showLabel="1" index="31" verticalStretch="0" horizontalStretch="0">
            <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
              <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
            </labelStyle>
          </attributeEditorField>
          <attributeEditorField name="autre_nom_latin" showLabel="1" index="32" verticalStretch="0" horizontalStretch="0">
            <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
              <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
            </labelStyle>
          </attributeEditorField>
        </attributeEditorContainer>
        <attributeEditorField name="SP_autre" showLabel="1" index="33" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorContainer collapsedExpressionEnabled="0" visibilityExpression="&quot;SP_autre&quot; = 'SPP_{ecd8b1b0-aa89-4e6a-b924-74d55e2ca196}'" visibilityExpressionEnabled="1" backgroundColor="#e49793" name="Si autre, préciser dans le champ commentaires" showLabel="1" collapsedExpression="" verticalStretch="0" type="GroupBox" groupBox="1" horizontalStretch="0" columnCount="1" collapsed="1">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorContainer>
        <attributeEditorField name="NbrVeg" showLabel="1" index="34" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="EEE_Densite" showLabel="1" index="35" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="Superf_m2" showLabel="1" index="36" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="StadeDev" showLabel="1" index="37" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="site_autre_stade" showLabel="1" index="38" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorContainer collapsedExpressionEnabled="0" visibilityExpression="attribute(get_feature('Tbl_OuiNon', 'ID_OuiNon', &quot;site_autre_stade&quot;), 'Valeur') = 'Oui'" visibilityExpressionEnabled="1" name="Choisir les stades de développement présents, du plus nombreux au moins nombreux" showLabel="1" collapsedExpression="" verticalStretch="0" type="GroupBox" groupBox="1" horizontalStretch="0" columnCount="1" collapsed="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
          <attributeEditorField name="site_stade_1" showLabel="1" index="39" verticalStretch="0" horizontalStretch="0">
            <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
              <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
            </labelStyle>
          </attributeEditorField>
          <attributeEditorField name="site_stade_2" showLabel="1" index="40" verticalStretch="0" horizontalStretch="0">
            <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
              <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
            </labelStyle>
          </attributeEditorField>
          <attributeEditorField name="site_stade_3" showLabel="1" index="41" verticalStretch="0" horizontalStretch="0">
            <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
              <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
            </labelStyle>
          </attributeEditorField>
          <attributeEditorField name="site_stade_4" showLabel="1" index="42" verticalStretch="0" horizontalStretch="0">
            <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
              <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
            </labelStyle>
          </attributeEditorField>
          <attributeEditorField name="site_stade_5" showLabel="1" index="43" verticalStretch="0" horizontalStretch="0">
            <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
              <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
            </labelStyle>
          </attributeEditorField>
        </attributeEditorContainer>
        <attributeEditorField name="cause_probag" showLabel="1" index="44" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="hote" showLabel="1" index="45" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
      <attributeEditorContainer collapsedExpressionEnabled="0" visibilityExpression="" visibilityExpressionEnabled="0" name="Traitement" showLabel="1" collapsedExpression="" verticalStretch="0" type="GroupBox" groupBox="1" horizontalStretch="0" columnCount="1" collapsed="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
        </labelStyle>
        <attributeEditorField name="Trt_av" showLabel="1" index="46" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorContainer collapsedExpressionEnabled="0" visibilityExpression="attribute(get_feature('Tbl_OuiNon', 'ID_OuiNon', &quot;Trt_av&quot;), 'Valeur') = 'Oui'" visibilityExpressionEnabled="1" name="Traitement passé" showLabel="1" collapsedExpression="" verticalStretch="0" type="GroupBox" groupBox="1" horizontalStretch="0" columnCount="1" collapsed="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
          <attributeEditorField name="Trt_avQui" showLabel="1" index="47" verticalStretch="0" horizontalStretch="0">
            <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
              <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
            </labelStyle>
          </attributeEditorField>
          <attributeEditorField name="Trt_avType" showLabel="1" index="48" verticalStretch="0" horizontalStretch="0">
            <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
              <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
            </labelStyle>
          </attributeEditorField>
        </attributeEditorContainer>
        <attributeEditorField name="TraitRecom" showLabel="1" index="49" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
      <attributeEditorField name="EEE_Comment" showLabel="1" index="50" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="photo1" showLabel="1" index="51" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont strikethrough="0" description="MS Shell Dlg 2,8.3,-1,5,50,0,0,0,0,0" style="" underline="0" bold="0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="Ann_Decouv" editable="1"/>
    <field name="Bacs_Reti" editable="1"/>
    <field name="Choix_ColInd" editable="1"/>
    <field name="Choix_GrColonie" editable="1"/>
    <field name="Choix_Section" editable="1"/>
    <field name="Contrainte" editable="1"/>
    <field name="Difficulte_lutte" editable="1"/>
    <field name="EEE_Comment" editable="1"/>
    <field name="EEE_Densite" editable="1"/>
    <field name="EEE_Diam" editable="1"/>
    <field name="EEE_Diam1" editable="1"/>
    <field name="EEE_Diam2" editable="1"/>
    <field name="EEE_Diam3" editable="1"/>
    <field name="EEE_Diam4" editable="1"/>
    <field name="EEE_H1" editable="1"/>
    <field name="EEE_H2" editable="1"/>
    <field name="EEE_H3" editable="1"/>
    <field name="EEE_H4" editable="1"/>
    <field name="EEE_Haut" editable="1"/>
    <field name="EEE_Longueur" editable="1"/>
    <field name="EEE_Occup" editable="1"/>
    <field name="EEE_Rive" editable="1"/>
    <field name="EEE_Type" editable="1"/>
    <field name="GPS_X" editable="1"/>
    <field name="GPS_Y" editable="1"/>
    <field name="Heure" editable="1"/>
    <field name="ID_EEE" editable="1"/>
    <field name="ID_EVEN" editable="1"/>
    <field name="ID_Employ" editable="1"/>
    <field name="ID_Etang" editable="1"/>
    <field name="ID_Licence" editable="1"/>
    <field name="ID_OBS" editable="1"/>
    <field name="ID_Proj" editable="1"/>
    <field name="ID_Proprio" editable="1"/>
    <field name="Milieu" editable="1"/>
    <field name="Munic" editable="1"/>
    <field name="NbrVeg" editable="1"/>
    <field name="Prive" editable="1"/>
    <field name="Proprio_donnee" editable="1"/>
    <field name="Repere" editable="1"/>
    <field name="Respo" editable="1"/>
    <field name="Reveg" editable="1"/>
    <field name="SP_autre" editable="1"/>
    <field name="Section" editable="1"/>
    <field name="Signaleur" editable="1"/>
    <field name="StadeDev" editable="1"/>
    <field name="Sup_m2" editable="1"/>
    <field name="Sup_m2_E" editable="1"/>
    <field name="Superf_m2" editable="1"/>
    <field name="TraitRecom" editable="1"/>
    <field name="Trait_Supm2" editable="1"/>
    <field name="Trt_av" editable="1"/>
    <field name="Trt_avQui" editable="1"/>
    <field name="Trt_avType" editable="1"/>
    <field name="Utilisateur" editable="1"/>
    <field name="autre_nom_latin" editable="1"/>
    <field name="autre_sp" editable="1"/>
    <field name="categorie" editable="1"/>
    <field name="cause_probag" editable="1"/>
    <field name="code_regi" editable="1"/>
    <field name="comm2" editable="1"/>
    <field name="comm3" editable="1"/>
    <field name="cont_notes" editable="1"/>
    <field name="courriel" editable="1"/>
    <field name="culture" editable="1"/>
    <field name="date_even" editable="1"/>
    <field name="fid" editable="1"/>
    <field name="hote" editable="1"/>
    <field name="id_act" editable="1"/>
    <field name="interv_duree" editable="1"/>
    <field name="interv_effort" editable="1"/>
    <field name="interv_nbr_pers" editable="1"/>
    <field name="interv_nbr_plants" editable="1"/>
    <field name="interv_nbr_plants_f" editable="1"/>
    <field name="interv_nbr_plants_g" editable="1"/>
    <field name="interv_nbr_plants_j" editable="1"/>
    <field name="interv_nbr_plants_m" editable="1"/>
    <field name="interv_nbr_plants_p" editable="1"/>
    <field name="interv_type" editable="1"/>
    <field name="interv_type_sec" editable="1"/>
    <field name="lat_champi" editable="0"/>
    <field name="lat_faune" editable="0"/>
    <field name="lat_flore" editable="0"/>
    <field name="lat_poiss" editable="0"/>
    <field name="mrc" editable="1"/>
    <field name="nb_individus" editable="1"/>
    <field name="nom_latin" editable="1"/>
    <field name="ong_intervention" editable="1"/>
    <field name="ong_proprietaire" editable="1"/>
    <field name="ong_signalement" editable="1"/>
    <field name="ong_site" editable="1"/>
    <field name="ong_suivi" editable="1"/>
    <field name="photo1" editable="1"/>
    <field name="photo2" editable="1"/>
    <field name="photo3" editable="1"/>
    <field name="precision" editable="1"/>
    <field name="region" editable="1"/>
    <field name="regne" editable="1"/>
    <field name="signaleur_contact" editable="1"/>
    <field name="site" editable="1"/>
    <field name="site_autre_stade" editable="1"/>
    <field name="site_stade_1" editable="1"/>
    <field name="site_stade_2" editable="1"/>
    <field name="site_stade_3" editable="1"/>
    <field name="site_stade_4" editable="1"/>
    <field name="site_stade_5" editable="1"/>
    <field name="sp_champi" editable="1"/>
    <field name="sp_faune" editable="1"/>
    <field name="sp_poisson" editable="1"/>
    <field name="suivi_graines" editable="1"/>
    <field name="suivi_pres" editable="1"/>
    <field name="suivi_superf" editable="1"/>
    <field name="suivi_superf_notes" editable="1"/>
    <field name="type_even" editable="1"/>
    <field name="type_point" editable="1"/>
    <field name="valid_ou_nouv" editable="1"/>
    <field name="zgie" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="Ann_Decouv"/>
    <field labelOnTop="0" name="Bacs_Reti"/>
    <field labelOnTop="0" name="Choix_ColInd"/>
    <field labelOnTop="0" name="Choix_GrColonie"/>
    <field labelOnTop="0" name="Choix_Section"/>
    <field labelOnTop="0" name="Contrainte"/>
    <field labelOnTop="0" name="Difficulte_lutte"/>
    <field labelOnTop="0" name="EEE_Comment"/>
    <field labelOnTop="0" name="EEE_Densite"/>
    <field labelOnTop="0" name="EEE_Diam"/>
    <field labelOnTop="0" name="EEE_Diam1"/>
    <field labelOnTop="0" name="EEE_Diam2"/>
    <field labelOnTop="0" name="EEE_Diam3"/>
    <field labelOnTop="0" name="EEE_Diam4"/>
    <field labelOnTop="0" name="EEE_H1"/>
    <field labelOnTop="0" name="EEE_H2"/>
    <field labelOnTop="0" name="EEE_H3"/>
    <field labelOnTop="0" name="EEE_H4"/>
    <field labelOnTop="0" name="EEE_Haut"/>
    <field labelOnTop="0" name="EEE_Longueur"/>
    <field labelOnTop="0" name="EEE_Occup"/>
    <field labelOnTop="0" name="EEE_Rive"/>
    <field labelOnTop="0" name="EEE_Type"/>
    <field labelOnTop="0" name="GPS_X"/>
    <field labelOnTop="0" name="GPS_Y"/>
    <field labelOnTop="0" name="Heure"/>
    <field labelOnTop="0" name="ID_EEE"/>
    <field labelOnTop="0" name="ID_EVEN"/>
    <field labelOnTop="0" name="ID_Employ"/>
    <field labelOnTop="0" name="ID_Etang"/>
    <field labelOnTop="0" name="ID_Licence"/>
    <field labelOnTop="0" name="ID_OBS"/>
    <field labelOnTop="0" name="ID_Proj"/>
    <field labelOnTop="0" name="ID_Proprio"/>
    <field labelOnTop="0" name="Milieu"/>
    <field labelOnTop="0" name="Munic"/>
    <field labelOnTop="0" name="NbrVeg"/>
    <field labelOnTop="0" name="Prive"/>
    <field labelOnTop="0" name="Proprio_donnee"/>
    <field labelOnTop="0" name="Repere"/>
    <field labelOnTop="0" name="Respo"/>
    <field labelOnTop="0" name="Reveg"/>
    <field labelOnTop="0" name="SP_autre"/>
    <field labelOnTop="0" name="Section"/>
    <field labelOnTop="0" name="Signaleur"/>
    <field labelOnTop="0" name="StadeDev"/>
    <field labelOnTop="0" name="Sup_m2"/>
    <field labelOnTop="0" name="Sup_m2_E"/>
    <field labelOnTop="0" name="Superf_m2"/>
    <field labelOnTop="0" name="TraitRecom"/>
    <field labelOnTop="0" name="Trait_Supm2"/>
    <field labelOnTop="0" name="Trt_av"/>
    <field labelOnTop="0" name="Trt_avQui"/>
    <field labelOnTop="0" name="Trt_avType"/>
    <field labelOnTop="0" name="Utilisateur"/>
    <field labelOnTop="0" name="autre_nom_latin"/>
    <field labelOnTop="0" name="autre_sp"/>
    <field labelOnTop="0" name="categorie"/>
    <field labelOnTop="0" name="cause_probag"/>
    <field labelOnTop="0" name="code_regi"/>
    <field labelOnTop="0" name="comm2"/>
    <field labelOnTop="0" name="comm3"/>
    <field labelOnTop="0" name="cont_notes"/>
    <field labelOnTop="0" name="courriel"/>
    <field labelOnTop="0" name="culture"/>
    <field labelOnTop="0" name="date_even"/>
    <field labelOnTop="0" name="fid"/>
    <field labelOnTop="0" name="hote"/>
    <field labelOnTop="0" name="id_act"/>
    <field labelOnTop="0" name="interv_duree"/>
    <field labelOnTop="0" name="interv_effort"/>
    <field labelOnTop="0" name="interv_nbr_pers"/>
    <field labelOnTop="0" name="interv_nbr_plants"/>
    <field labelOnTop="0" name="interv_nbr_plants_f"/>
    <field labelOnTop="0" name="interv_nbr_plants_g"/>
    <field labelOnTop="0" name="interv_nbr_plants_j"/>
    <field labelOnTop="0" name="interv_nbr_plants_m"/>
    <field labelOnTop="0" name="interv_nbr_plants_p"/>
    <field labelOnTop="0" name="interv_type"/>
    <field labelOnTop="0" name="interv_type_sec"/>
    <field labelOnTop="0" name="lat_champi"/>
    <field labelOnTop="0" name="lat_faune"/>
    <field labelOnTop="0" name="lat_flore"/>
    <field labelOnTop="0" name="lat_poiss"/>
    <field labelOnTop="0" name="mrc"/>
    <field labelOnTop="0" name="nb_individus"/>
    <field labelOnTop="0" name="nom_latin"/>
    <field labelOnTop="0" name="ong_intervention"/>
    <field labelOnTop="0" name="ong_proprietaire"/>
    <field labelOnTop="0" name="ong_signalement"/>
    <field labelOnTop="0" name="ong_site"/>
    <field labelOnTop="0" name="ong_suivi"/>
    <field labelOnTop="0" name="photo1"/>
    <field labelOnTop="0" name="photo2"/>
    <field labelOnTop="0" name="photo3"/>
    <field labelOnTop="0" name="precision"/>
    <field labelOnTop="0" name="region"/>
    <field labelOnTop="0" name="regne"/>
    <field labelOnTop="0" name="signaleur_contact"/>
    <field labelOnTop="0" name="site"/>
    <field labelOnTop="0" name="site_autre_stade"/>
    <field labelOnTop="0" name="site_stade_1"/>
    <field labelOnTop="0" name="site_stade_2"/>
    <field labelOnTop="0" name="site_stade_3"/>
    <field labelOnTop="0" name="site_stade_4"/>
    <field labelOnTop="0" name="site_stade_5"/>
    <field labelOnTop="0" name="sp_champi"/>
    <field labelOnTop="0" name="sp_faune"/>
    <field labelOnTop="0" name="sp_poisson"/>
    <field labelOnTop="0" name="suivi_graines"/>
    <field labelOnTop="0" name="suivi_pres"/>
    <field labelOnTop="0" name="suivi_superf"/>
    <field labelOnTop="0" name="suivi_superf_notes"/>
    <field labelOnTop="0" name="type_even"/>
    <field labelOnTop="0" name="type_point"/>
    <field labelOnTop="0" name="valid_ou_nouv"/>
    <field labelOnTop="0" name="zgie"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="Ann_Decouv" reuseLastValue="0"/>
    <field name="Bacs_Reti" reuseLastValue="0"/>
    <field name="Choix_ColInd" reuseLastValue="0"/>
    <field name="Choix_GrColonie" reuseLastValue="0"/>
    <field name="Choix_Section" reuseLastValue="0"/>
    <field name="Contrainte" reuseLastValue="0"/>
    <field name="Difficulte_lutte" reuseLastValue="0"/>
    <field name="EEE_Comment" reuseLastValue="0"/>
    <field name="EEE_Densite" reuseLastValue="0"/>
    <field name="EEE_Diam" reuseLastValue="0"/>
    <field name="EEE_Diam1" reuseLastValue="0"/>
    <field name="EEE_Diam2" reuseLastValue="0"/>
    <field name="EEE_Diam3" reuseLastValue="0"/>
    <field name="EEE_Diam4" reuseLastValue="0"/>
    <field name="EEE_H1" reuseLastValue="0"/>
    <field name="EEE_H2" reuseLastValue="0"/>
    <field name="EEE_H3" reuseLastValue="0"/>
    <field name="EEE_H4" reuseLastValue="0"/>
    <field name="EEE_Haut" reuseLastValue="0"/>
    <field name="EEE_Longueur" reuseLastValue="0"/>
    <field name="EEE_Occup" reuseLastValue="0"/>
    <field name="EEE_Rive" reuseLastValue="0"/>
    <field name="EEE_Type" reuseLastValue="0"/>
    <field name="GPS_X" reuseLastValue="0"/>
    <field name="GPS_Y" reuseLastValue="0"/>
    <field name="Heure" reuseLastValue="0"/>
    <field name="ID_EEE" reuseLastValue="0"/>
    <field name="ID_EVEN" reuseLastValue="0"/>
    <field name="ID_Employ" reuseLastValue="0"/>
    <field name="ID_Etang" reuseLastValue="0"/>
    <field name="ID_Licence" reuseLastValue="0"/>
    <field name="ID_OBS" reuseLastValue="0"/>
    <field name="ID_Proj" reuseLastValue="0"/>
    <field name="ID_Proprio" reuseLastValue="0"/>
    <field name="Milieu" reuseLastValue="0"/>
    <field name="Munic" reuseLastValue="1"/>
    <field name="NbrVeg" reuseLastValue="0"/>
    <field name="Prive" reuseLastValue="0"/>
    <field name="Proprio_donnee" reuseLastValue="0"/>
    <field name="Repere" reuseLastValue="0"/>
    <field name="Respo" reuseLastValue="1"/>
    <field name="Reveg" reuseLastValue="0"/>
    <field name="SP_autre" reuseLastValue="0"/>
    <field name="Section" reuseLastValue="0"/>
    <field name="Signaleur" reuseLastValue="0"/>
    <field name="StadeDev" reuseLastValue="0"/>
    <field name="Sup_m2" reuseLastValue="0"/>
    <field name="Sup_m2_E" reuseLastValue="0"/>
    <field name="Superf_m2" reuseLastValue="0"/>
    <field name="TraitRecom" reuseLastValue="0"/>
    <field name="Trait_Supm2" reuseLastValue="0"/>
    <field name="Trt_av" reuseLastValue="0"/>
    <field name="Trt_avQui" reuseLastValue="0"/>
    <field name="Trt_avType" reuseLastValue="0"/>
    <field name="Utilisateur" reuseLastValue="0"/>
    <field name="autre_nom_latin" reuseLastValue="0"/>
    <field name="autre_sp" reuseLastValue="0"/>
    <field name="categorie" reuseLastValue="0"/>
    <field name="cause_probag" reuseLastValue="0"/>
    <field name="code_regi" reuseLastValue="0"/>
    <field name="comm2" reuseLastValue="0"/>
    <field name="comm3" reuseLastValue="0"/>
    <field name="cont_notes" reuseLastValue="0"/>
    <field name="courriel" reuseLastValue="0"/>
    <field name="culture" reuseLastValue="0"/>
    <field name="date_even" reuseLastValue="0"/>
    <field name="fid" reuseLastValue="0"/>
    <field name="hote" reuseLastValue="0"/>
    <field name="id_act" reuseLastValue="0"/>
    <field name="interv_duree" reuseLastValue="0"/>
    <field name="interv_effort" reuseLastValue="0"/>
    <field name="interv_nbr_pers" reuseLastValue="0"/>
    <field name="interv_nbr_plants" reuseLastValue="0"/>
    <field name="interv_nbr_plants_f" reuseLastValue="0"/>
    <field name="interv_nbr_plants_g" reuseLastValue="0"/>
    <field name="interv_nbr_plants_j" reuseLastValue="0"/>
    <field name="interv_nbr_plants_m" reuseLastValue="0"/>
    <field name="interv_nbr_plants_p" reuseLastValue="0"/>
    <field name="interv_type" reuseLastValue="0"/>
    <field name="interv_type_sec" reuseLastValue="0"/>
    <field name="lat_champi" reuseLastValue="0"/>
    <field name="lat_faune" reuseLastValue="0"/>
    <field name="lat_flore" reuseLastValue="0"/>
    <field name="lat_poiss" reuseLastValue="0"/>
    <field name="mrc" reuseLastValue="1"/>
    <field name="nb_individus" reuseLastValue="0"/>
    <field name="nom_latin" reuseLastValue="0"/>
    <field name="ong_intervention" reuseLastValue="0"/>
    <field name="ong_proprietaire" reuseLastValue="0"/>
    <field name="ong_signalement" reuseLastValue="0"/>
    <field name="ong_site" reuseLastValue="0"/>
    <field name="ong_suivi" reuseLastValue="0"/>
    <field name="photo1" reuseLastValue="0"/>
    <field name="photo2" reuseLastValue="0"/>
    <field name="photo3" reuseLastValue="0"/>
    <field name="precision" reuseLastValue="0"/>
    <field name="region" reuseLastValue="1"/>
    <field name="regne" reuseLastValue="0"/>
    <field name="signaleur_contact" reuseLastValue="0"/>
    <field name="site" reuseLastValue="0"/>
    <field name="site_autre_stade" reuseLastValue="0"/>
    <field name="site_stade_1" reuseLastValue="0"/>
    <field name="site_stade_2" reuseLastValue="0"/>
    <field name="site_stade_3" reuseLastValue="0"/>
    <field name="site_stade_4" reuseLastValue="0"/>
    <field name="site_stade_5" reuseLastValue="0"/>
    <field name="sp_champi" reuseLastValue="0"/>
    <field name="sp_faune" reuseLastValue="0"/>
    <field name="sp_poisson" reuseLastValue="0"/>
    <field name="suivi_graines" reuseLastValue="0"/>
    <field name="suivi_pres" reuseLastValue="0"/>
    <field name="suivi_superf" reuseLastValue="0"/>
    <field name="suivi_superf_notes" reuseLastValue="0"/>
    <field name="type_even" reuseLastValue="0"/>
    <field name="type_point" reuseLastValue="0"/>
    <field name="valid_ou_nouv" reuseLastValue="0"/>
    <field name="zgie" reuseLastValue="1"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"autre_nom_latin"</previewExpression>
  <layerGeometryType>0</layerGeometryType>
</qgis>
