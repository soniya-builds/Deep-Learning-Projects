from fastapi import FastAPI, File, UploadFile
from fastapi.middleware.cors import CORSMiddleware
import uvicorn
import numpy as np
from io import BytesIO
from PIL import Image
import tensorflow as tf


app = FastAPI()
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