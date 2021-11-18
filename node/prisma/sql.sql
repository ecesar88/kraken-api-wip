INSERT INTO AndroidVersions (deviceCodename, eleven, twelve)
VALUES (
    'motorola',
    true,
    true
  );


INSERT INTO Repository (id, name, deviceCodename)
VALUES (
    'motorola',
    'teste',
    'motorola'
  );


INSERT INTO SupportedTypes (deviceCodename, gapps, vanila)
VALUES (
    'motorola',
    true,
    true
  );


INSERT INTO Device (
    codename,
    name,
    brand,
    xda_thread,
    deprecated,
    supportedTypesId,
    supportedTypesDeviceCodename,
    androidVersionsDeviceCodename
  )
VALUES (
    'motorola',
    'g4',
    'motorola',
    'https://xda.com.br',
    false,
    'motorola',
    'motorola',
    'motorola'
  );