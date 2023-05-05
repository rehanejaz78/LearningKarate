package Utilities;

import java.util.Random;

public class RandomNumber {

    public static int generateRandomInt(int lowerBound, int upperBound) {

        Random rand = new Random();
        int randomNumber = rand.nextInt(upperBound - lowerBound + 1) + lowerBound;
        return randomNumber;
    }

    public static void main(String[] args) {

        int lowerBound = 10;
        int upperBound = 20;

        int randomNumber = generateRandomInt(lowerBound, upperBound);

        System.out.println("Random Number between " + lowerBound + " and " + upperBound + " is " + randomNumber);
    }
}
