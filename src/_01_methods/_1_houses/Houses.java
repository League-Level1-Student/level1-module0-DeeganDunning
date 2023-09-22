package _01_methods._1_houses;

import java.awt.Color;
import java.util.Random;

import org.jointheleague.graphical.robot.Robot;

/*
 *    Copyright (c) The League of Amazing Programmers 2013-2021
 *    Level 1
 */
public class Houses {
	static 	Robot rob = new Robot() ;	
	static Random r = new Random();
	public void run() {
		
		// Check the recipe to find out what code to put here
		
		rob.hide();
		rob.setX(30);
		rob.setY(500);
		rob.penDown();
		rob.setSpeed(60);
		
		for (int i = 0; i < 10; i ++) {
			drawHouse(r.nextInt(100)+ 50);
		}
		
		
	}
	static void drawHouse(int height) {
		rob.move(height);
		rob.turn(90);
		rob.move(30);
		rob.turn(90);
		rob.move(height);
		rob.turn(-90);
		rob.setPenColor(Color.green);
		rob.move(20);
		rob.turn(-90);
		rob.setPenColor(Color.black);
	}
}


