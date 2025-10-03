from dotenv import load_dotenv
import os

load_dotenv()  # loads variables from .env

api_key = os.getenv("API_KEY")
print("My API Key:", api_key)
