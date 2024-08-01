import javax.swing.*;

import java.awt.*;

import java.awt.Container;
import java.awt.event.*;
import java.io.*;
import java.net.*;

public class SwingClint1 extends JFrame implements ActionListener {
	private static final long serislVersionUID=1L;
	JTextField t1;
	JButton b1;
	
	public SwingClint1() {
		// TODO Auto-generated constructor stub
		Container c = getContentPane();
		c.setLayout(new FlowLayout());
		t1 = new JTextField(20);
		b1 = new JButton("click");
		c.add(t1);
		c.add(b1);
		b1.addActionListener(this);
		setSize(400,400);
		setVisible(true);
		}

	public void actionPerformed(ActionEvent e)
	{
		try
		{
			if(e.getSource()== b1)
			{
				URL url =new URL("http://localhost:8282/23mcac36/SwingJava");
				String qrysend = URLEncoder.encode("param1","UTF-8")+"="+ URLEncoder.encode(t1.getText(),"UTF-8");
				URLConnection uc = url.openConnection();
				uc.setDoOutput(true);
				uc.setDoOutput(true);
				try(PrintStream dos = new PrintStream(uc.getOutputStream()))
				{
					dos.println(qrysend);
					System.out.println("OK");
					System.out.println(qrysend);
				}
				
			}
		}catch(Exception ee)
		{
			ee.printStackTrace();
		}
	}
	public static void main(String args[])
	{
		new SwingClint1();
	}
}


