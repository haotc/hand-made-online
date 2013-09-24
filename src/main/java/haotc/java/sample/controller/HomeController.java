package haotc.java.sample.controller;

import haotc.java.sample.bo.CustomerLoginBo;
import haotc.java.sample.bo.CustomerRegisterBo;
import haotc.java.sample.bo.ProductBo;
import haotc.java.sample.entity.ProductEntity;
import haotc.java.sample.form.CustomerRegisterForm;
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
//@SessionAttributes("loginName")
public class HomeController {

    @Autowired
    private ProductBo productBo;

    @Autowired
    private CustomerLoginBo customerLoginBo;

    @Autowired
    private CustomerRegisterBo customerRegisterBo;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String initProduct(ModelMap model, HttpServletRequest request) {
        CustomerRegisterForm registerUser = new CustomerRegisterForm();
        model.addAttribute("registerUser", registerUser);
//        model.addAttribute("loginUser", loginUser);
//        String username = (String) request.getSession().getAttribute("loginUser");
        return "main";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public
    @ResponseBody
    String login(@RequestParam(required = true, value = "uname") String username,
                 @RequestParam(required = true, value = "pwd") String password,
                 HttpServletRequest request) {
        if (customerLoginBo.checkLogin(username, password)) {
            request.getSession().setAttribute("loginUser", username);
            return username;
        }
        return null;
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request) {
        request.getSession().removeAttribute("loginUser");
        return "redirect:/";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String processRegister(@ModelAttribute("registerUser") CustomerRegisterForm registerUser,
                                  HttpServletRequest request) {
        customerRegisterBo.register(registerUser.getUsername(), registerUser.getEmail(), registerUser.getPassword());

        request.getSession().setAttribute("loginUser", registerUser.getUsername());
        return "redirect:/";
    }

    @RequestMapping(value = "/get-products", method = RequestMethod.GET)
    public
    @ResponseBody
    List<ProductEntity> getProductList(@RequestParam(required = true, value = "page") int page,
                                       @RequestParam(required = true, value = "pageSize") int pageSize) {
        List<ProductEntity> rs = productBo.getProductList(page, pageSize);
        return rs;
    }

    @RequestMapping(value = "/product-details", method = RequestMethod.GET)
    public String getProductDetails(@RequestParam(required = true, value = "id") int id,
                                    ModelMap model) {
        ProductEntity rs = productBo.getProductById(id);
        model.addAttribute("product", rs);
        CustomerRegisterForm registerUser = new CustomerRegisterForm();
        model.addAttribute("registerUser", registerUser);
        return "product-details";
    }

//    @RequestMapping(value = "/cart", method = RequestMethod.GET)
//    public String addProductToCart(@RequestParam(required = true, value = "productId") int productId,
//                                   ModelMap model, HttpServletRequest request) {
//        CustomerRegisterForm registerUser = new CustomerRegisterForm();
//        model.addAttribute("registerUser", registerUser);
//        List<OrderDetailsEntity> carts = (List<OrderDetailsEntity>) request.getSession().getAttribute("cart");
//        if (carts == null) {
//            carts = new ArrayList<OrderDetailsEntity>();
//        }
//        carts.add(new OrderDetailsEntity(productId, null, ))
//        return "cart";
//    }
}