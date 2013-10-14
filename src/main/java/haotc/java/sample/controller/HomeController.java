package haotc.java.sample.controller;

import haotc.java.sample.bo.UserLoginBo;
import haotc.java.sample.bo.CustomerRegisterBo;
import haotc.java.sample.bo.ProductBo;
import haotc.java.sample.common.CommonConstants;
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
//@SessionAttributes("loginName")
public class HomeController {

    @Autowired
    private ProductBo productBo;

    @Autowired
    private UserLoginBo userLoginBo;

    @Autowired
    private CustomerRegisterBo customerRegisterBo;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String initDefaultProduct() {
        return "main";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@ModelAttribute("loginForm") LoginForm loginForm, ModelMap model,
                        HttpServletRequest request) {
        if (userLoginBo.checkLogin(loginForm.getUsername(), loginForm.getPassword(), CommonConstants.CUSTOMER_ROLE)) {
            request.getSession().setAttribute("loginUser", loginForm.getUsername());
            return "redirect:/";
        }
        model.addAttribute("loginForm", loginForm);
        model.addAttribute("loginFailed", true);
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap model, HttpServletRequest request) {
        if (request.getSession().getAttribute("loginUser") == null) {
            model.addAttribute("loginForm", new LoginForm());
            return "login";
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request) {
        request.getSession().removeAttribute("loginUser");
        return "redirect:/";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(ModelMap model, HttpServletRequest request) {
        if (request.getSession().getAttribute("loginUser") == null) {
            model.addAttribute("registerUser", new CustomerRegisterForm());
            return "register";
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String processRegister(@RequestParam(required = true, value = "regUsername") String regUsername,
                                  @RequestParam(required = true, value = "regEmail") String regEmail,
                                  @RequestParam(required = true, value = "regPassword") String regPassword,
                                  @RequestParam(required = true, value = "regRepassword") String regRepassword,
                                  HttpServletRequest request) {
        customerRegisterBo.register(regUsername, regEmail, regPassword);

        request.getSession().setAttribute("loginUser", regUsername);
        return "redirect:/";
    }

    @RequestMapping(value = "/get-products", method = RequestMethod.GET)
    public
    @ResponseBody
    List<ProductEntity> getProductList(@RequestParam(required = true, value = "page") int page,
                                       @RequestParam(required = true, value = "pageSize") int pageSize,
                                       @RequestParam(required = true, value = "categoryName") String categoryName) {
        List<ProductEntity> rs = productBo.getProductList(page, pageSize, categoryName);
        return rs;
    }

    @RequestMapping(value = "/product-details", method = RequestMethod.GET)
    public String getProductDetails(@RequestParam(required = true, value = "id") int id,
                                    ModelMap model) {
        ProductEntity rs = productBo.getProductById(id);
        model.addAttribute("product", rs);
        return "product-details";
    }

    @RequestMapping(value = "/add-to-cart", method = RequestMethod.GET)
    public String addProductToCart(@RequestParam(required = true, value = "productId") int productId,
                                   ModelMap model, HttpServletRequest request) {
        // get cart from session
        List<CartItemModel> carts = (List<CartItemModel>) request.getSession().getAttribute("cart");
        if (carts == null) {
            carts = new ArrayList<CartItemModel>();
        }

        // find product info by id
        ProductEntity p = productBo.getProductById(productId);

        // add product to cart, if it has been exist in cart, increase its quantity, else add new to cart
        Boolean existed = false;
        for (CartItemModel cartItemModel : carts) {
            if (cartItemModel.getProductId() == productId) {
                cartItemModel.setQuantity(cartItemModel.getQuantity() + 1);
                existed = true;
                break;
            }
        }
        if (!existed) {
            carts.add(new CartItemModel(productId, p.getName(), 1, p.getUnitPrice(), p.getImageUrl()));
        }

        // go to cart page
        request.getSession().setAttribute("cart", carts);
        return "redirect:/cart";
    }

    @RequestMapping(value = "/delete-from-cart", method = RequestMethod.GET)
    public String removeProductFromCart(@RequestParam(required = true, value = "productId") int productId,
                                        ModelMap model, HttpServletRequest request) {
        // get cart from session
        List<CartItemModel> carts = (List<CartItemModel>) request.getSession().getAttribute("cart");
        if (carts == null) {
            carts = new ArrayList<CartItemModel>();
        }

        // if it has been exist in cart, remove it
        for (CartItemModel cartItemModel : carts) {
            if (cartItemModel.getProductId() == productId) {
                carts.remove(cartItemModel);
                break;
            }
        }

        // go to cart page
        request.getSession().setAttribute("cart", carts);
        return "redirect:/cart";
    }

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String addProductToCart(ModelMap model, HttpServletRequest request) {
        return "cart";
    }

    @RequestMapping(value = "/shipping-address", method = RequestMethod.GET)
    public String addShippingAddress(ModelMap model, HttpServletRequest request) {
        if (request.getSession().getAttribute("loginUser") == null) {
            return "redirect:/login";
        }
        return "shipping-address";
    }

    @RequestMapping(value = "/fill-shipping-address", method = RequestMethod.POST)
    public String processShippingAddress(ModelMap model, HttpServletRequest request) {
        if (request.getSession().getAttribute("loginUser") == null) {
            return "redirect:/login";
        }
        return "shipping-address";
    }
}