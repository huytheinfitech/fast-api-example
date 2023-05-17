from typing import Optional, cast

from datetime import datetime
from fastapi import FastAPI, UploadFile, BackgroundTasks, File, Form
from fastapi.middleware.cors import CORSMiddleware


app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.get("/")
async def hello():
    return "Hello world????"
