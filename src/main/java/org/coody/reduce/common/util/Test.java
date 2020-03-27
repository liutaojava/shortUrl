package org.coody.reduce.common.util;

import java.math.BigDecimal;

/**
 * Created by liutao on 2020-03-09 17:47
 */
public class Test {

    public static void main(String[] args) {

        BigDecimal[] bigDecimals = new BigDecimal("66").divideAndRemainder(BigDecimal.valueOf(66));
        System.out.println(bigDecimals);
    }
}
