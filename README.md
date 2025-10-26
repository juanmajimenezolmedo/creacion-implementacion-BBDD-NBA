📋 Descripción del Proyecto
Sistema de base de datos diseñado para gestionar estadísticas completas de baloncesto profesional (NBA). El proyecto aborda la problemática de centralizar información dispersa sobre equipos, jugadores, partidos y estadísticas, implementando una arquitectura relacional robusta que facilita consultas analíticas complejas.

## Problemática Identificada
1) Falta de un sistema centralizado para consultar estadísticas de partidos y jugadores
2) Dificultad para registrar y rastrear datos de equipos, faltas y puntos de forma ordenada
3) Ausencia de mecanismos eficaces para obtener información precisa sobre rendimiento

## Solución Implementada
Base de datos relacional normalizada siguiendo la metodología MERISE, compuesta por 11 tablas interrelacionadas que garantizan integridad referencial y facilitan análisis estadísticos multidimensionales.


🗂️ Estructura del Proyecto
proyectoDbNba/
│
├── 📓 ProyectoDatosBaloncesto.ipynb
│   └── Notebook principal con:
│       • Conexión a MySQL
│       • Creación de las 11 tablas
│       • Importación de datos desde scripts Python
│
├── 📓 Testing_Base_de_datos.ipynb
│   └── Suite de pruebas unitarias:
│       • Verificación de existencia de tablas
│       • Validación de conteo de registros
│       • Tests de integridad referencial
│       • Pruebas de rendimiento de consultas
│
├── 📄 Presentacion_Diseño-e-implementacion-BBDD.pdf
│   └── Documentación técnica del proyecto:
│       • Diagrama Entidad-Relación
│       • Fases MERISE (MCD, MLD, MPD)
│       • Justificación de decisiones de diseño
│
├── 📄 Listado de consultas.docx
│   └── Especificaciones de requisitos:
│       • Consultas SQL requeridas (mínimo 7)
│       • Criterios de validación
│       • Métricas de rendimiento
│
└── 📁 data/
    ├── data_conference.py      # INSERT para tabla conference (6 registros)
    ├── data_team.py            # INSERT para tabla team (30 registros)
    ├── data_player.py          # INSERT para tabla player (100 registros)
    ├── data_stadium.py         # INSERT para tabla stadium (29 registros)
    ├── data_fault.py           # INSERT para tabla fault (3 registros)
    ├── data_season.py          # INSERT para tabla season (1 registro)
    ├── data_game.py            # INSERT para tabla game (102 registros)
    ├── data_game_team.py       # INSERT para tabla game_team (204 registros)
    ├── data_player_fault.py    # INSERT para tabla player_fault (202 registros)
    ├── data_team_position.py   # INSERT para tabla team_position (30 registros)
    └── data_player_point.py    # INSERT para tabla player_point (189 registros)


📊 Esquema de Base de Datos
1) Tablas Principales
2) TablaDescripciónRegistrosconferenceConferencias Este/Oeste con sus divisiones6teamEquipos NBA vinculados a conferencias30playerJugadores asociados a equipos100stadiumEstadios con ubicación geográfica29faultTipos de falta (técnica, personal, antideportiva)3seasonTemporadas del torneo1gamePartidos con fecha, estadio y temporada102game_teamParticipación de equipos en partidos (ganador, puntos)204player_faultFaltas cometidas por jugadores202team_positionPosición final de equipos por temporada30player_pointPuntos anotados (triples, dobles, libres)189

## Relaciones Clave
1) Un equipo pertenece a una conferencia (1:N)
2) Un jugador pertenece a un equipo (1:N)
3) Un partido involucra múltiples equipos (N:M vía game_team)
4) Un jugador comete faltas en varios partidos (N:M vía player_fault)
5) Un jugador anota puntos en varios partidos (N:M vía player_point)


🚀 Cómo Usar el Proyecto

## Paso 1: Configuración Inicial
- Clonar el repositorio: git clone https://github.com/DavidGallardoDigi/proyectoDbNba.git
- Instalar dependencias: pip install mysql-connector-python jupyter
- Crear la base de datos en MySQL: CREATE DATABASE damL_proyecto2T_g2;

## Paso 2: Ejecutar el Setup
- Abrir ProyectoDatosBaloncesto.ipynb y ejecutar las celdas secuencialmente para:
- Conectar con MySQL
- Crear las 11 tablas con sus restricciones
- Importar todos los datos

## Paso 3: Ejecutar Tests
- Abrir Testing_Base_de_datos.ipynb para validar:
✅ Existencia de todas las tablas
✅ Conteo correcto de registros
✅ Integridad referencial
✅ Rendimiento de consultas


🛠️ Tecnologías Utilizadas

1) Python 3.11: Lenguaje de programación principal
2) MySQL 8.0: Sistema gestor de base de datos
3) mysql-connector-python: Conector Python-MySQL
4) Jupyter Notebook: Entorno de desarrollo interactivo
5) unittest: Framework de testing


👨‍💼 Perfil del Autor
Profesional en transición desde el marketing digital hacia el análisis de datos. Este proyecto demuestra competencias en:
- Diseño de arquitecturas de bases de datos relacionales
- Implementación de soluciones con Python y SQL
- Testing y validación de calidad de datos
- Documentación técnica exhaustiva

Sumergido en un periplo en busca de oportunidades como Junior Data Analyst para aplicar habilidades analíticas en entornos data-driven.
