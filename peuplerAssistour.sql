use assistour;

insert into TYPECONTRAT values( 1 , "Plénitude" );
insert into TYPECONTRAT values( 2 , "tOUR Risques ECO" );

insert into ADHERENT values( 1 , 1 , "IVANOVITCH" , "Sacha" , "14 rue du boulevard du Temple" , 75003 , "Paris" , 0692882953 );
insert into ADHERENT values( 2 , 2 , "BELCKACEM" , "Marwan" , "2 rue de la Maspero" , 75016 , "Paris" , 0673939905 );

insert into CONTRAT values( 1 , 1 , 1 , 50 , "3412 CV 75" , "Citroën" , "C3" , "A2" , "2033-04-15" );
insert into CONTRAT values( 2 , 1 , 1 , 50 , "BJ 83 AE" , "Renault" , "Kadjar" , "C8" , "2019-10-10" );
insert into CONTRAT values( 3 , 2 , 2 , 50 , "GN-92-DE" , "Renault" , "Koleos" , "B7" , "2020-01-03" );

insert into TECHNICIENASSISTANCE values( 1 , "BENTOU" , "Olivia" );

insert into GARAGE values( 1 , "De La Sansonnais" , "rue du General De Gaulle" , "Sansonnais" , 0296854098 , 210 );
insert into GARAGE values( 2 , "Citroën de Guéret" , "22 rue du Marechal Leclerc" , "Citroën" , 0555524852 , 190 );

insert into DSSINISTRE values( 1 , 1 , 1 , 1 , "2022-05-20", "13:27:00" , "s'endort au volant" , "deformation moderee des elements" , "Dinan" , 1 );
insert into DSSINISTRE values( 2 , 1 , 2 , 3 , "2022-06-03", "19:30:00" , "percuter par un poids lourd" , "vehicule irrecuperable" , "Saint Vaury" , 2 );

insert into COULEUR values( 1 , "Rouge");
insert into COULEUR values( 2 , "Jaune");
insert into COULEUR values( 3 , "Bleu");
insert into COULEUR values( 4 , "Vert");

insert into HOTEL values( 1 , "L'hotel du theatre" , "Dinan, 2 rue Sainte Claire" , 0296390691 , 65 , 3 );
insert into HOTEL values( 2 , "L'hotel Ocean" , "Dinan, 9 place du 11 Novembre 1918" , 0296854361 , 79 , 4 );

insert into DATEDEP values("2022-03-05");
insert into DATEDEP values("2022-03-06");
insert into DATEDEP values("2022-03-08");

insert into HÉBERGER values("2022-03-05" , 1 , 1 , 2 , "2022-03-03");
insert into HÉBERGER values("2022-03-06" , 1 , 2 , 1 , "2022-03-05");
insert into HÉBERGER values("2022-03-08" , 1 , 1 , 2 , "2022-03-06");


insert into MODEDETRANSPORT values( 1 , "Taxi");
insert into MODEDETRANSPORT values( 2 , "Train");
insert into MODEDETRANSPORT values( 3 , "Intercites");

insert into TRANSPORTEUR values( 1 , "BATY TAXI");
insert into TRANSPORTEUR values( 2 , "SNCF");

insert into PROPOSER values( 1 , 1);
insert into PROPOSER values( 2 , 2);
insert into PROPOSER values( 3 , 2);

insert into ETAPE values(1 , 2 , 1 , 1 , "19:30:00" , 22 , "Sainte Vaury" , "Gueret" );
insert into ETAPE values(2 , 2 , 2 , 2 , "20:00:00" , 23.80 , "Gueret" , "Limoges" );
insert into ETAPE values(3 , 2 , 3 , 2 , "20:30:00" , 68 , "Limoges" , "Paris-Austerlitz" );

insert into TYPEOPERATION values( "DO2O" , "Réparation crémaillère de direction");
insert into TYPEOPERATION values( "DO22" , "Remplacement colonne de direction");

insert into EFFECTUER values( 1 , "DO2O");
insert into EFFECTUER values( 1 , "DO22");







 
