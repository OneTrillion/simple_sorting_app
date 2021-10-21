package com.sample;

import com.sample.model.QuickSortAlg;

import java.util.Random;

public class ProgramLogic {
    private static int[] stickSize;
    private Random random;

    public ProgramLogic(){
        random = new Random();
    }

    public void makeSticks() {
        stickSize = new int[10];
        for (int i = 0; i < 10; i++) {
            stickSize[i] = random.nextInt(10) + 1;
        }
    }

    public void sortStick(){
        QuickSortAlg.quickSort(stickSize, 0, stickSize.length-1);
    }

    public int[] getStickSize() {
        return stickSize;
    }
}
