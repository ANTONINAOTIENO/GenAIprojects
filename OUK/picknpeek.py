import os
from dotenv import load_dotenv
from google import genai
from google import genai


# Load the API key from your .env
load_dotenv()
API_KEY = os.getenv("API_KEY")

# Create the Gemini client
client = genai.Client(api_key=API_KEY)

def pick_and_peek():
    print("Welcome to Pick & Peek 🔮")
    print("Enter a number between 1 and 10 (or 'q' to quit):")

    while True:
        user_input = input("> ").strip()

        if user_input.lower() == "q":
            print("Goodbye! Come back for more fortunes 🍀")
            break

        if not user_input.isdigit():
            print("Invalid input. Please type a number 1–10 or 'q' to quit.\n")
            continue

        num = int(user_input)
        if num < 1 or num > 10:
            print("Pick a number between 1 and 10, please.\n")
            continue

        prompt = f"Give me a short, funny fortune-cookie style message for number {num}."

        # Call Gemini API
        response = client.models.generate_content(
            model="gemini-2.0-flash",
            contents=prompt
        )

        # The response object has .text property
        fortune = response.text
        print(f"🔮 Fortune: {fortune}\n")

if __name__ == "__main__":
    pick_and_peek()
