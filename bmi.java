import java.io.*;

public class bmi
{
	public static void main(String[] args)
	{
		try
		{
			InputStreamReader isr = new InputStreamReader(System.in);
			BufferedReader br = new BufferedReader(isr);

			System.out.print("Your weight please (in kg please): ");
			float weight = br.readLine();

			System.out.print("Your height now please (in m!): ");
			float height = br.readLine();

			float bmi = weight / Math.pow(height, 2);
			System.out.print(bmi);
		}
		catch (IOException ioe)
		{
		}
	}
}
