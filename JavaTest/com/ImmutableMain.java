package com;

import java.util.concurrent.atomic.AtomicReference;

public class ImmutableMain {

    public static void main(String[] args) {
//        Immutab
        AtomicReference<CarInfo> atomicReference = new AtomicReference<>(new CarInfo());
        CarInfo carInfo = atomicReference.get();
        if (atomicReference.compareAndSet(atomicReference.get(), carInfo)) {
            System.out.println(true);
        }
        else {
            System.out.println(false);
        }
//        System.out.println(aad.hashCode());
//        System.out.println(atomicReference.get().hashCode());
//        if (aad.equals(atomicReference.get())) {
//            System.out.println(true);
//        }
//        else {
//            System.out.println(false);
//        }
    }

}
