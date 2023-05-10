package Paractice;

import com.intuit.karate.junit5.Karate;
public class TestRunner {


    @Karate.Test
    Karate getApi(){

        return Karate.run("get.requests.feature").relativeTo(getClass());
    }
    //similarly you can add more request functions.
}
