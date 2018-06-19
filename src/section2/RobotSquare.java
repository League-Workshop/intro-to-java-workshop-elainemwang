package section2;

import org.jointheleague.graphical.robot.Robot;

public class RobotSquare {
	public static void main(String[] args) {
		int count = 0;
		Robot robot = new Robot();
		robot.setPenColor(34, 12, 1000);
		robot.setSpeed(100);
		robot.hide();
		robot.penDown();
		
		for(int i = 0; i < 4; i++) {
			robot.move(100);
			robot.turn(90);
			
		}
		
		while (count < 4) {
			robot.move(100);
			robot.turn(35);
			robot.move(40);
			robot.turn(43);;
			//count += 1;
		}
		
		
		
	}
}
