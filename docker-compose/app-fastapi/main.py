from fastapi import FastAPI
from sqlalchemy import create_engine, MetaData, Table, text
from sqlalchemy.orm import sessionmaker

# Configura la URL de la base de datos
DATABASE_URL = "postgresql://postgres:postgres@db:5434/e11evenn_db"

# Configuración de SQLAlchemy
engine = create_engine(DATABASE_URL)
metadata = MetaData()
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# Crear la aplicación FastAPI
app = FastAPI()

@app.get("/data")
def read_data():
    with engine.connect() as connection:
        # Ejecuta la consulta en la tabla 'estudiantes'
        result = connection.execute(text("SELECT * FROM estudiantes"))
        # Convierte los resultados en una lista de diccionarios con nombres de columnas específicos
        data = [
            {"id": row["id"], "nombre": row["nombre"], "apellido": row["apellido"], "carrera_universitaria": row["carrera_universitaria"]}
            for row in result
        ]
    return data

