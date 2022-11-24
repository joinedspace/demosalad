SELECT CASE
         WHEN name = 'Strathcona\n' THEN 'Strathcona'
         WHEN name = 'Downtown Eastside' THEN 'Downtown'
       END AS name_consol,
       *
FROM df_tracts
  INNER JOIN (SELECT CASE
                       WHEN locale = 'ArbutusRidge' THEN 'Arbutus Ridge'
                       WHEN locale = 'DunbarSouthlands' THEN 'Dunbar Southlands'
                       WHEN locale = 'GrandviewWoodland' THEN 'Grandview-Woodland'
                       WHEN locale = 'HastingsSunrise' THEN 'Hastings-Sunrise'
                       WHEN locale = 'KensingtonCedarCottage' THEN 'Kensington-Cedar Cottage'
                       WHEN locale = 'MountPleasant' THEN 'Mount Pleasant'
                       WHEN locale = 'RenfrewCollingwood' THEN 'Renfrew-Collingwood'
                       WHEN locale = 'RileyPark' THEN 'Riley Park'
                       WHEN locale = 'SouthCambie' THEN 'South Cambie'
                       WHEN locale = 'VictoriaFraserview' THEN 'Victoria-Fraserview'
                       WHEN locale = 'WestEnd' THEN 'West End'
                       WHEN locale = 'WestPointGrey' THEN 'West Point Grey'
                     END AS name_consol,
                     *
              FROM df_demos) USING (name_consol)
