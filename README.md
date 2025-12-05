# ucc-sd2024

📦 Sistema Dockerizado de Bases de Datos y Aplicaciones ETL

Este proyecto es un sistema dockerizado completo que integra múltiples bases de datos y aplicaciones orientadas al manejo de flujos avanzados de datos. Combina PostgreSQL con replicación, Oracle Database y aplicaciones en Python, C++ y Flask para ofrecer un entorno capaz de insertar, consultar, transformar y mover datos de manera eficiente.

🚀 Características Principales
🔹 1. Bases de Datos Integradas

PostgreSQL (Master + Replica): Configuración de replicación para alta disponibilidad.

Oracle Database: Base de destino para los datos procesados mediante ETL.

🔹 2. Pipeline ETL Automatizado

Scripts en Python que realizan extracción desde PostgreSQL, transformación personalizada y carga final en Oracle.

🔹 3. Aplicaciones de Inserción y Consulta

Generadores de datos en Python y C++ para alimentar la base PostgreSQL.

Aplicaciones web con Flask para consultar datos y visualizar resultados en tiempo real.

🛠️ Tecnologías Utilizadas

Bases de Datos: PostgreSQL (con replicación), Oracle

Lenguajes: Python, C++

Frameworks: Flask

Contenedores: Docker y Docker Compose

🧩 Logros Técnicos

Configuración de replicación avanzada en PostgreSQL, garantizando disponibilidad y redundancia.

Pipeline ETL sólido y automatizado entre PostgreSQL y Oracle.

Aplicaciones de consulta e inserción accesibles vía web, ligeras y fáciles de usar.

Despliegue simplificado mediante Docker Compose, permitiendo levantar todo el sistema con un solo comando.

📈 Impacto

Este proyecto demuestra cómo integrar tecnologías modernas para manejar datos complejos dentro de un entorno modular y escalable. Es ideal para escenarios empresariales donde se necesite:

Alta disponibilidad

Procesamiento seguro y eficiente de datos

Acceso rápido mediante servicios web

Arquitecturas escalables basadas en contenedores
