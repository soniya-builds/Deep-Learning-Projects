from fastapi import FastAPI, File, UploadFile
from fastapi.middleware.cors import CORSMiddleware
import uvicorn
import numpy as np
from io import BytesIO
from PIL import Image
import tensorflow as tf


app = FastAPI()

origins = [
    "http://localhost",
    "http://localhost:3000",
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

MODEL = tf.keras.models.load_model("D:/Model Training/models/1")


@app.get("/ping")
async def ping():
    return "Hello, I am alive"
if __name__ == "__main__":
    uvicorn.run(app, host='localhost', port=8001)
    
@app.post("/predict")
async def predict(
    file: UploadFile = File(...)
):
    pass