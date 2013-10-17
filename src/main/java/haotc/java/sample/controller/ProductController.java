package haotc.java.sample.controller;

import haotc.java.sample.bo.CategoryBo;
import haotc.java.sample.bo.ProductBo;
import haotc.java.sample.entity.CategoryEntity;
import haotc.java.sample.entity.ProductEntity;
import haotc.java.sample.model.ProductModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 9/9/13
 * Time: 1:20 PM
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("admin")
public class ProductController {

    @Autowired
    private ProductBo productBo;

    @Autowired
    private CategoryBo categoryBo;

    @RequestMapping(value = "product/list", method = RequestMethod.GET)
    public String list(ModelMap model) {
        try {
            List<ProductEntity> list = productBo.list();
            model.addAttribute("productList", list);
            return "product-list";
        } catch (Exception e) {
            return "error";
        }
    }

    @RequestMapping(value = "product/delete", method = RequestMethod.GET)
    public String delete(@RequestParam(required = true, value = "id") Integer id) {
        try {
            productBo.removeById(id);
            return "redirect:list";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    @RequestMapping(value = "product/{id}", method = RequestMethod.GET)
    public String getInfo(@PathVariable(value = "id") Integer id,
                          HttpServletRequest request,
                          ModelMap model) {
        try {
            model.addAttribute("product", productBo.getProductById(id));
            return "product-details-admin";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    @RequestMapping(value = "product/new", method = RequestMethod.GET)
    public String create(ModelMap model) {
        List<CategoryEntity> list = categoryBo.list();
        final Map<Integer, String> cateMap = new HashMap<Integer, String>();
        for (CategoryEntity cate : list) {
            cateMap.put(cate.getId(), cate.getDescription());
        }
        Set<Map.Entry<Integer, String>> categories = cateMap.entrySet();
        model.addAttribute("categoryList", categories);
        model.addAttribute("product", new ProductModel());
        return "product-new";
    }

    @RequestMapping(value = "product/create", method = RequestMethod.POST)
    public String create(@ModelAttribute(value = "product") ProductModel product) {
        try {
            productBo.save(product);
            return "redirect:list";
        } catch (Exception e) {
            return "error";
        }
    }

    @RequestMapping(value = "product/{id}/edit", method = RequestMethod.GET)
    public String edit(@PathVariable(value = "id") Integer id,
                       ModelMap model) {
        try {
            List<CategoryEntity> list = categoryBo.list();
            final Map<Integer, String> cateMap = new HashMap<Integer, String>();
            for (CategoryEntity cate : list) {
                cateMap.put(cate.getId(), cate.getDescription());
            }
            Set<Map.Entry<Integer, String>> categories = cateMap.entrySet();
            model.addAttribute("categoryList", categories);
            ProductEntity product = productBo.getProductById(id);
            ProductModel p = new ProductModel();
            p.setId(product.getId());
            p.setName(product.getName());
            p.setShortDesc(product.getShortDesc());
            p.setDetailDesc(product.getDetailDesc());
            p.setQuantity(product.getQuantity());
            p.setNumberOfSold(product.getNumberOfSold());
            p.setUnitPrice(product.getUnitPrice());
            model.addAttribute("product", p);
            return "product-edit";
        } catch (Exception e) {
            return "error";
        }
    }

    @RequestMapping(value = "product/update", method = RequestMethod.POST)
    public String update(@ModelAttribute(value = "product") ProductModel product) {
        try {
            productBo.save(product);
            return "redirect:list";
        } catch (Exception e) {
            return "error";
        }
    }
}