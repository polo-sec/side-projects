package com.company;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
	Scanner scan = new Scanner(System.in);

	String[] baseArray = new String[]{"1","1","2","2","2","8"};

	System.out.println("input: x x x x x x");
	String[] inputArray = scan.nextLine().split(" ");

	for (int i = 0; i <= 5; i++) {
			int baseval = Integer.parseInt(baseArray[i]);
			int inptval = Integer.parseInt(inputArray[i]);
			int finalval = inptval-baseval;
			System.out.println(finalval);

		}
    }
}
