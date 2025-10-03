with entry {
    keep_playing = True;

    while keep_playing {
        user_input = input("Enter a number between 1 and 10 (or 'q' to quit): ");

        if user_input == "q" {
            print("Goodbye! Come back for more fortunes!");
            keep_playing = False;
        } else {
            if int(user_input) >= 1 && int(user_input) <= 10 {
                fortunes = [
                    "Today is a perfect day to code something awesome",
                    "A surprise bug will teach you more than success",
                    "Your future is… compiling. Please wait",
                    "Happiness comes from semicolons you forgot yesterday",
                    "Someone is secretly impressed with your debugging powers",
                    "Your snack break will be legendary",
                    "You will soon inherit a kingdom of curly braces { }",
                    "A random segfault is just destiny testing your patience",
                    "Tomorrow you will fix today’s problem in one line",
                    "Your fortune: CTRL + Z will save you at the right time"
                ];

                idx = int(user_input) - 1;
                print("Fortune:", fortunes[idx]);
            } else {
                print("Please enter a number between 1 and 10.");
            }
        }
    }
}
