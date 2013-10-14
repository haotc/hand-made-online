package haotc.java.sample.controller;

import haotc.java.sample.bo.CategoryBo;
import haotc.java.sample.bo.UserLoginBo;
import haotc.java.sample.bo.ProductBo;
import haotc.java.sample.common.CommonConstants;
import haotc.java.sample.entity.CustomerLoginEntity;
import haotc.java.sample.model.LoginForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 9/9/13
 * Time: 1:20 PM
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("admin")
public class AdminController {

    @Autowired
    private ProductBo productBo;

    @Autowired
    private CategoryBo categoryBo;

    @Autowired
    private UserLoginBo userLoginBo;

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String initAdminPage(HttpServletRequest request) {
        if (request.getSession().getAttribute("loginUser") == null) {
            return "redirect:admin-login";
        }
        return "admin-main";
    }

    @RequestMapping(value = "admin-login", method = RequestMethod.GET)
    public String login(ModelMap model, HttpServletRequest request) {
        if (request.getSession().getAttribute("loginUser") == null) {
            model.addAttribute("loginForm", new LoginForm());
            return "admin-login";
        }
        return "redirect:admin/index";
    }

    @RequestMapping(value = "admin-login", method = RequestMethod.POST)
    public String login(@ModelAttribute("loginForm") LoginForm loginForm, ModelMap model,
                        HttpServletRequest request) {
        if (userLoginBo.checkLogin(loginForm.getUsername(), loginForm.getPassword(), CommonConstants.ADMIN_ROLE)) {
            request.getSession().setAttribute("loginUser", loginForm.getUsername());
            return "redirect:index";
        }
        model.addAttribute("loginForm", loginForm);
        model.addAttribute("loginFailed", true);
        return "admin-login";
    }

    @RequestMapping(value = "user/list", method = RequestMethod.GET)
    public String getCustomerList(ModelMap model, HttpServletRequest request) {
        if (request.getSession().getAttribute("loginUser") == null) {
            model.addAttribute("loginForm", new LoginForm());
            return "admin-login";
        }
        List<CustomerLoginEntity> customerList = userLoginBo.getCustomerLoginList();
        model.addAttribute("userList", customerList);
        return "admin-user";
    }

    @RequestMapping(value = "user/delete", method = RequestMethod.GET)
    public String getUserInfo(@RequestParam(required = true, value = "us") String userLogin) {
        try {
            userLoginBo.remove(userLogin);
            return "redirect:list";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/error";
        }
    }

    @RequestMapping(value = "user/{us}", method = RequestMethod.GET)
    public String getDeleteUser(@PathVariable(value = "us") String userLogin,
                                HttpServletRequest request,
                                ModelMap model) {
        try {
            model.addAttribute("user", userLoginBo.getUser(userLogin));
            return "user-details";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/error";
        }
    }
}