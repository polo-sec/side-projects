package com.company;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.print("Please enter the ceiling value\n");
        int maxvalue = in.nextInt();

        for (int i = 0; i <= maxvalue; ++i) {
            if (i % 3 == 0 & i % 5 != 0) {
                System.out.print("\nFizz @ " + i);
            }
            else if (i % 3 != 0 & i % 5 == 0) {
                System.out.print("\nBuzz @ " + i);
            }
            else if (i % 3 == 0 & i % 5 == 0) {
                System.out.print("\nFizzBuzz @ " + i);
            }
         }

        }
    }
