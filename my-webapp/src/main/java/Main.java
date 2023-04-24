import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@SpringBootApplication
@Controller
public class Main {

    private int number = 0;

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("number", number);
        return "index";
    }

    @PostMapping("/increment")
    public String increment() {
        number++;
        return "redirect:/";
    }

    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }
}