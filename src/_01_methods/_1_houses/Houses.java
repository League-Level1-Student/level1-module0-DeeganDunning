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

	static String[] sizes = {"Small","Medium","Large"};
	public void run() {

		// Check the recipe to find out what code to put here
		rob.setWindowColor(Color.black);
		rob.hide();
		rob.setX(30);
		rob.setY(500);
		rob.penDown();
		rob.setSpeed(60);

		for (int i = 0; i < 10; i ++) {
			//drawHouse(r.nextInt(100)+ 50);
		}
		//drawHouse("Large", Color.red);
		//drawHouse("Medium", Color.blue);
		//	drawHouse("Medium", Color.green);
		//	drawHouse("Small", Color.yellow);
		//	drawHouse("Large", Color.cyan);
		//	drawHouse("Small", Color.orange);
		//	drawHouse("Medium", Color.gray);
		//	drawHouse("Small", Color.DARK_GRAY);
		//drawHouse("Large", Color.pink);
		//drawHouse("Medium", Color.red);

		for (int i = 0;i < 30; i++ ) {
			int size = r.nextInt (3) ;
			Color c = new Color (r.nextInt(255), r.nextInt(255), r.nextInt(255));
			drawHouse(  sizes[size], c);
		}
	}
	static void drawFlatRoof() {
		rob.turn(90);
		rob.move(30);
		rob.turn(90);
	}
	static void drawPointyRoof() {
		rob.turn(45);
		rob.move(15);
		rob.turn(90);
		rob.move(15);
		rob.turn(45);
	}

	static void drawHouse(int height) {
		rob.move(height);
		if (height <= 60) {
			drawPointyRoof();
		} else {
			drawFlatRoof();
		}

		rob.move(height);
		rob.turn(-90);
		rob.setPenColor(Color.green);
		rob.move(20);
		rob.turn(-90);
		rob.setPenColor(Color.black);
	}
	static void drawHouse (String height, Color color) {
		rob.setPenColor(color);
		if (height.equals("Small") ) {
			drawHouse(60);	
		}
		if (height.equals("Medium") ) {
			drawHouse(120);	
		}
		if (height.equals("Large") ) {
			drawHouse(250);	
		}
	}
}


