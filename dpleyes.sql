CREATE TABLE `dpleyes` (
  `LEY_ARTICU` varchar(20) DEFAULT NULL COMMENT 'Artículo',
  `LEY_TEXTO` longtext COMMENT 'Texto',
  `LEY_CODIGO` varchar(20) DEFAULT NULL COMMENT 'Código',
  `LEY_TITULO` varchar(250) DEFAULT NULL COMMENT 'Titulo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1