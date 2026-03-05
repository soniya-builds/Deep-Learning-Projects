from fastapi import FastAPI, UploadFile, File
import uvicorn
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