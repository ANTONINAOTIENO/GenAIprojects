import os;
import random;
import from byllm.llm { Model }


glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

""" Give me a short, funny fortune-cookie style message according to the number you are provided with"""
def get_fortune(num: int) -> str by llm(); 

with entry {
    keep_playing = True;

    while keep_playing {
        user_input = input("Enter a number between 1 and 10 (or 'q' to quit): ");

        if user_input == "q" {
            print("Goodbye! Come back for more fortunes!");
            keep_playing = False;
        } else {
            if int(user_input) >= 1 && int(user_input) <= 10 {
                fortune = get_fortune(int(user_input));
                print("🔮 Fortune:", fortune);
            } else {
                print("Please enter a number between 1 and 10.");
            }
        }
    }
}
