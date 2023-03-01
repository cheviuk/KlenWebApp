package org.klen;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class KlenGreatingController {

    @GetMapping("/greating")
    public String greating() {
        return "greating";
    }
}
