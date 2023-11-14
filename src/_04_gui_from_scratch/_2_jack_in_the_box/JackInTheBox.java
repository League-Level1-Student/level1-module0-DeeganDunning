package _04_gui_from_scratch._2_jack_in_the_box;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class JackInTheBox implements ActionListener {
	public static void main(String[] args) {
		new JackInTheBox().run();
		
	}

	private void run() {
		// TODO Auto-generated method stub
		JFrame frame = new JFrame();
		frame.setVisible(true);
		JButton button = new JButton();
		frame.add(button);
		frame.pack();
		button.setText("Jack In The Box");
		button.addActionListener(this);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		
	}
}
