from fastapi import FastAPI
import uvicorn
from mylib.logic import wiki

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Wikipedia API. Call/search or /wiki"}

@app.get("/search/{value}")
async def search(value: str):
    result = search_wiki(value)
    return {"result": result}

if __name__ == '__main__':
    uvicorn.run(app, port=8080, host='0.0.0.0')