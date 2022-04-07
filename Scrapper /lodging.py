from pydantic import BaseModel
from typing import Optional

class Lodging(BaseModel) :
    name: str
    price: float
    is_offer: Optional[bool] = None