from typing import Optional

from fastapi import FastAPI
from pydantic import BaseModel
import scrapper

app = FastAPI()

class Item(BaseModel) :
    name: str
    price: float
    is_offer: Optional[bool] = None


@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Optional[str] = None):
    return {"item_id": item_id, "q": q}

@app.put("/items/{item_id}")
def update_item(item_id: int, item: Item) :
    return {"item_name" : item.name, "item_id": item_id}

@app.get("/airbnb/{lodging_id}")
def scrappe_airbnb_lodging(lodging_id: str) :
    return scrapper.scrappe(lodging_id)