package Paractice;

import com.intuit.karate.junit5.Karate;
//import com.intuit.karate.junit4.Karate;




public class TestRunner {


    @Karate.Test
    Karate getApi(){

        return Karate.run("get.requests.feature").relativeTo(getClass());
    }

//    @Karate.Test
//    Karate TestTags(){
//       // return new Karate().tags("@Smoke2").relativeTo(getClass());
//       // return new Karate().feature("get").relativeTo(getClass());
//       // return new Karate().fea
//    }

    @Karate.Test
    Karate testFeature(){
        return  Karate.run("example1.feature").tags("@Smoke2").relativeTo(getClass());
    }

    //similarly you can add more request functions.






}
