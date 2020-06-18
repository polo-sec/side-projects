package com.company;
import java.util.Scanner;

public class Main {


	//Example 1
	/*
    public static void main(String[] args) {
	Scanner input = new Scanner(System.in);
	System.out.println("Please enter your age: ");
	int inVariable = input.nextInt();
	int currentyear = 2019;
	int birthYear = currentyear - inVariable;
	System.out.println("You were born in " + birthYear);
	}
	*/



	//Example 2
	/*
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Please enter your age: ");
		int age = input.nextInt();
		int discount = 0;

		if (age < 18) {
			discount = 30;
		} else if (age >= 18 && age <= 30) {
			discount = 45;
		} else if (age > 30) {
			discount = 25;
		}

		System.out.println("Your discount is " + discount);
	}
	*/


	//Example 3
	/*
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Please enter your age: ");
		int age = input.nextInt();
		int discount = 0;

		if (age > 60) {
			discount = 70;
		} else if (age > 45 && age <=60) {
			discount = 45;
		} else if (age < 45) {
			discount = 25;
		}
		System.out.println("Your discount is: " + discount);
	}
	*/

	// Example 4
	/*
	public static void main(String[] args) {
	Scanner input = new Scanner(System.in);
	System.out.println("Please enter your age");
	int age = input.nextInt();
	int discount = 0;
	int currentyear = 2020;

	int yearofbirth = currentyear - age;

	if (yearofbirth < 1967) {
		discount = 30;
	} else {
		discount = 45;
	}
	System.out.println("Your discount is: " + discount);
	}
	*/

	// Exercise 5
	/*
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Please enter 1, 2 or 3 ");
		int option = input.nextInt();
		switch (option) {
			case 1: System.out.println("You Chose 1");
			case 2: System.out.println("You Chose 2");
			case 3: System.out.println("You Chose 3");
		}
	}
	*/

	// Exercise 6
	/*
	public static void main(String[] args) {
		int n = 5;
		for (int i = 0; i <= n; i++)
			System.out.print(i+"\n");
	}
	*/

	// Exercise 7
/*
	public static void main (String[] args) {
		boolean controlswitch = true;

		while(controlswitch){
			System.out.println("Loop was run");
			Scanner inputvalue = new Scanner(System.in);
			int value = inputvalue.nextInt();
			if (value == -1) {controlswitch = !controlswitch;}
		}
	}
*/

/*
	public static void main(String[] args) {
		double[] arr = {3.4,4.5,5.6,6.7};
		ArrayManager arr = new ArrayManager(arr);
		System.out.println("Array: " + arr.returnAsString());
	}
	public class ArrayManager {

		double[] array;
		public ArrayManager(double[] values)  {array = values;}
		public String returnAsString(){
			String values = "[ ";
			for(int i = 0; i  array.length;i++){
				if(i < array.length-1){values += array[i] + " , ";}
				else{values += array[i] ;}
			}
			values += " ]";
			return values;
		}
	}
*/
}
