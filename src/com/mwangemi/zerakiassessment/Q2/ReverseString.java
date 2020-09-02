package com.mwangemi.zerakiassessment.Q2;

public class ReverseString {
    public static void main(String[] args) {
        String S = "Lorem at";
        System.out.println("Original String: "+S);
        // Groups of 4
        int K = 4;
        // Length of String
        int N = S.length();
        S = reverseString(S, K, N);
        System.out.println("Reversed String: "+S);
    }

    public static String reverseString(String S, int K, int N) {
        for(int i =0; i<S.length();){
            if(i + K > N)
                break;
            S = S.substring(0,i) + new String(new StringBuilder(
                    S.substring(i,i+K)).reverse()) +
                    S.substring(i+K);
            i += K;
        }
        return S;
    }

}
