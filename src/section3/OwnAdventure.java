package section3;

import javax.swing.JOptionPane;

public class OwnAdventure {
	public static boolean caveExplore = false;
	public static boolean forestExplore = false;
	
	public static void main(String[] args) {
		
		
		JOptionPane.showMessageDialog(null, "You are stuck on a deserted island.\nYou decide to explore the island and come across a cave, a dense forest, and a jungle temple");
		String[] startChoices = {"Cave", "Forest", "Temple"};
		int choice1 = JOptionPane.showOptionDialog(null, "Which do you want to explore?", "Explore", 0, JOptionPane.PLAIN_MESSAGE, null, startChoices, args);
		System.out.println(choice1);
		if(choice1 == 0) {
			caveExplore = true;
			String[] caveChoices = {"Attack the bear", "Take the gold"};
			int caveChoice = JOptionPane.showOptionDialog(null, "You enter the cave and come across a large, sleeping bear on top of a large pile of gold", "Cave", 0, JOptionPane.PLAIN_MESSAGE, null, caveChoices, args);
			
			if(caveChoice == 0) {
				int confirmBear = JOptionPane.showConfirmDialog(null, "Are you sure?");
				if (confirmBear == 0) {
					JOptionPane.showMessageDialog(null, "The huge bear wakes up and immediately swallows you whole.  You die.");
				}
				else if(confirmBear == 1) {
					JOptionPane.showMessageDialog(null, "You grab the gold and run out of the cave. ");
					int choice2 = JOptionPane.showOptionDialog(null, "Which do you want to explore?", "Explore", 0, JOptionPane.PLAIN_MESSAGE, null, new String[] {"Forest","Temple"}, args);
				}
				
			if(caveChoice == 1) {
				JOptionPane.showMessageDialog(null, "You grab the gold and run out of the cave. ");
				int choice2 = JOptionPane.showOptionDialog(null, "Which do you want to explore?", "Explore", 0, JOptionPane.PLAIN_MESSAGE, null, new String[] {"Forest","Temple"}, args);
			}
			}//end cave
			
		}//end choose cave
		
		if(choice1 == 1) {
			JOptionPane.showMessageDialog(null, "You go into the forest and find edible berries and fresh water.  \nAfter walking a little further, you see a monkey high up in a tree.  The monkey shouts \"reu3asdfgwa\" ");
			int getPass = JOptionPane.showConfirmDialog(null, "Do you copy?");
			
			if(getPass == 0 && caveExplore){
				
			}
		}//end choose forest
		
	}//main
	
	static void temple() {
		if(caveExplore && forestExplore) {
			int sacrifice = JOptionPane.showConfirmDialog(null, "You enter the temple see a large statue.  \nThe statue's eyes suddenly begin to glow and it roars, \"Are you prepared to make a sacrifice to the guardian of the temple?\"");
		}
	}
	
}//class
