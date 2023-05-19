
package Utilities;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertTrue;



public class TestRunner {

    @Karate.Test
    Karate getApi(){

        return Karate.run("get.requests.feature").relativeTo(getClass());
    }


    @Karate.Test
    Karate testFeature(){
        return  Karate.run("example1.feature").tags("@Smoke2").relativeTo(getClass());


    }

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:Paractice").outputCucumberJson(true).parallel(1);
        generateReport(results.getReportDir());
        assertTrue(results.getFailCount() == 0, results.getErrorMessages());
    }


    //similarly you can add more request functions.
    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("/Users/Karate/LearningKarate/target"), "Learning Karate");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }

}

