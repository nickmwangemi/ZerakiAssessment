package com.mwangemi.zerakiassessment.Q1;

public class MissingNumber {
    public static void main(String args[])
    {
        int a[] = {3,5,4,1};
         /*
        For further testing
        int a[] = {3,5,4,2,1,7};
        */
        int lengthOfArray = a.length;

        int missingNumber = findMissingNo(a, lengthOfArray);
        System.out.println("Missing Number: "+missingNumber);
    }

    static int findMissingNo(int numbers[], int lengthOfArray)
    {
        int sum = 0;
        // Sum of numbers in array from 1 to N
        sum = (lengthOfArray + 1) * (lengthOfArray + 2) / 2;
        for (int i = 0; i < lengthOfArray; i++)
            sum -= numbers[i];
        return sum;
    }

}
