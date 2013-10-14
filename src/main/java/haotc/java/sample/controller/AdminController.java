package haotc.java.sample.controller;

import haotc.java.sample.bo.CategoryBo;
import haotc.java.sample.bo.CustomerLoginBo;
import haotc.java.sample.bo.CustomerRegisterBo;
import haotc.java.sample.bo.ProductBo;
import haotc.java.sample.common.Category;
import haotc.java.sample.entity.CategoryEntity;
import haotc.java.sample.entity.CustomerLoginEntity;
import haotc.java.sample.entity.ProductEntity;
import haotc.java.sample.model.CartItemModel;
import haotc.java.sample.model.CustomerRegisterForm;
import haotc.java.sample.model.LoginForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 9/9/13
 * Time: 1:20 PM
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class AdminController {

    @Autowired
    private ProductBo productBo;

    @Autowired
    private CategoryBo categoryBo;

    @Autowired
    private CustomerLoginBo customerLoginBo;

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String initAdminPage(HttpServletRequest request) {
        if (request.getSession().getAttribute("loginUser") == null) {
            return "redirect:/admin-login";
        }
        return "admin-main";
    }

    @RequestMapping(value = "/admin-login", method = RequestMethod.GET)
    public String login(ModelMap model, HttpServletRequest request) {
        if (request.getSession().getAttribute("loginUser") == null) {
            model.addAttribute("loginForm", new LoginForm());
            return "admin-login";
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/admin-login", method = RequestMethod.POST)
    public String login(@ModelAttribute("loginForm") LoginForm loginForm, ModelMap model,
                        HttpServletRequest request) {
        if (customerLoginBo.checkLogin(loginForm.getUsername(), loginForm.getPassword())) {
            request.getSession().setAttribute("loginUser", loginForm.getUsername());
            return "redirect:/admin";
        }
        model.addAttribute("loginForm", loginForm);
        model.addAttribute("loginFailed", true);
        return "admin-login";
    }

    @RequestMapping(value = "/admin/user", method = RequestMethod.GET)
    public String getCustomerList(ModelMap model, HttpServletRequest request) {
        if (request.getSession().getAttribute("loginUser") == null) {
            model.addAttribute("loginForm", new LoginForm());
            return "admin-login";
        }
        List<CustomerLoginEntity> customerList = customerLoginBo.getCustomerLoginList();
        model.addAttribute("userList", customerList);
        return "admin-user";
    }
}