# mini-project
#this is a miniproject on gamification in the learning space. it aims to improve motiovation and focus in students while studying.
#AN EXAMPLE
import random


quiz_data = [
    {
        "question": "What is the capital of France?",
        "options": ["A) Berlin", "B) Madrid", "C) Paris", "D) Rome"],
        "answer": "C"
    },
    {
        "question": "What is 5 + 7?",
        "options": ["A) 10", "B) 11", "C) 12", "D) 13"],
        "answer": "C"
    },
    {
        "question": "Who developed Python?",
        "options": ["A) Dennis Ritchie", "B) Guido van Rossum", "C) James Gosling", "D) Bjarne Stroustrup"],
        "answer": "B"
    },
    {
        "question": "What is the square root of 64?",
        "options": ["A) 6", "B) 7", "C) 8", "D) 9"],
        "answer": "C"
    },
    {
        "question": "Which planet is known as the Red Planet?",
        "options": ["A) Earth", "B) Mars", "C) Jupiter", "D) Venus"],
        "answer": "B"
    }
]


def run_quiz():
    score = 0
    random.shuffle(quiz_data) 

    for item in quiz_data:
        print("\n" + item["question"])
        for option in item["options"]:
            print(option)

        # Take input and validate
        while True:
            answer = input("Enter your choice (A, B, C, D): ").strip().upper()
            if answer in ["A", "B", "C", "D"]:
                break
            print("Invalid choice. Please enter A, B, C, or D.")

        if answer == item["answer"]:
            print("Correct!\n")
            score += 1
        else:
            print(f"Wrong! The correct answer is {item['answer']}\n")

    print(f"Your final score is {score}/{len(quiz_data)}.")


# Run the quiz
if __name__ == "__main__":
    run_quiz()

