# gemini_helper.py
from google import genai
import os

# Create client
client = genai.Client(api_key=os.getenv("API_KEY"))

def get_fortune(number: int) -> str:
    prompt = f"Give me a short, funny fortune-cookie style message for number {number}."
    response = client.models.generate(model="gemini-2.0-flash", prompt=prompt)
    return response.text
