package com.company;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.print("\nProgram Started...\n");
        System.out.print("Please enter the ceiling value\n");
        int maxvalue = in.nextInt();

        for (int i = 0; i <= maxvalue; i++) {
            System.out.println(i);
            String output = "";
            if (i % 3 == 2) {
                output = "Fizz";
                    if (i % 5 == 2) {
                        output = output + "Buzz";
                    }
}
        System.out.println(output);
        }
    }
}