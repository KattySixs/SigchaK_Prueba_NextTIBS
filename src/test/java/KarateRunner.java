import com.intuit.karate.junit5.Karate;

public class KarateRunner {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:add_pet.feature","classpath:requestID_pet.feature","classpath:update_pet.feature","classpath:requestStatus_pet.feature");
    }
}
