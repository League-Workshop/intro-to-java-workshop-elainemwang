package section4;

import javax.swing.JOptionPane;

public class QuizGame {
	
	public static void main(String[] args) {
		
		// 1.  Create a variable to hold the user's score 
		int score = 0;
		// 2.  Ask the user a question 
		String answer = JOptionPane.showInputDialog("What is 1+1?");
		// 3.  Use an if statement to check if their answer is correct
		if (answer.equals("2")) {
			score++;
		}
		String answer2 = JOptionPane.showInputDialog("What is 1+2?");
		// 3.  Use an if statement to check if their answer is correct
		if (answer2.equals("3")) {
			score++;
		}
		String answer3 = JOptionPane.showInputDialog("What is 1+3?");
		// 3.  Use an if statement to check if their answer is correct
		if (answer3.equals("4")) {
			score++;
		}
		String answer4 = JOptionPane.showInputDialog("What is 1+4?");
		// 3.  Use an if statement to check if their answer is correct
		if (answer4.equals("5")) {
			score++;
		}
		
		System.out.println(score);
		// 4.  if the user's answer is correct
		
		// -- add one to their score 
		
		// 5.  Create more questions by repeating steps 1, 2, and 3 below. 
		
		// 6.  After all the questions have been asked, print the user's score 
		
	}
}
