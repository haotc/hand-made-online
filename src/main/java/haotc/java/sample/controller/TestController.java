package haotc.java.sample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 10/14/13
 * Time: 1:09 PM
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/test/")
public class TestController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String initAdminPage() {
        return "admin-login";
    }
}
