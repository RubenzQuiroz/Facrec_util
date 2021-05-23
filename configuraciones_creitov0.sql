SELECT DI,
  PERIODO_FACT,
  VENCIMIENTO,
  FECHA,
  COMISION_FACTURA,
  COMISION_NOTA_CREDITO,
  COMISION_FAC_SUPER_REC,
  GEN_FACTURA
FROM FACT_CONFIGURACIONES_CRED 
where di =201341 ;


INSERT INTO FACT_CONFIGURACIONES_CRED (DI,PERIODO_FACT,VENCIMIENTO,FECHA,COMISION_FACTURA,COMISION_NOTA_CREDITO,COMISION_FAC_SUPER_REC,GEN_FACTURA)
  VALUES (158163,1,7,sysdate,0.932039,0.93,0.932039,1 );
  commit;

INSERT INTO FACT_CONFIGURACIONES_CRED (DI,PERIODO_FACT,VENCIMIENTO,FECHA,COMISION_FACTURA,COMISION_NOTA_CREDITO,COMISION_FAC_SUPER_REC,GEN_FACTURA)
  VALUES (201341,1,7,sysdate,0.927184,0.925,0.927184,1 );
  
  
  SELECT DI,
  FECHA,
  COMISION_FACTURA,
  COMISION_NOTA_CREDITO,
  COMISION_MENSAJE,
  GEN_FACTURA
FROM FACT_CONFIGURACIONES_CONT where di=158163;

update FACT_CONFIGURACIONES_CONT set GEN_FACTURA=0 where di=201341;
select * from CATA_DI_CLIENTE where di= 201341;

