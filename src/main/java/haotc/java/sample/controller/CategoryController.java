package haotc.java.sample.controller;

import haotc.java.sample.bo.CategoryBo;
import haotc.java.sample.entity.CategoryEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
public class CategoryController {

    @Autowired
    private CategoryBo categoryBo;

    @RequestMapping(value = "category/list", method = RequestMethod.GET)
    public String list(ModelMap model) {
        try {
            List<CategoryEntity> list = categoryBo.list();
            model.addAttribute("categoryList", list);
            return "category-list";
        } catch (Exception e) {
            return "error";
        }
    }

    @RequestMapping(value = "category/delete", method = RequestMethod.GET)
    public String delete(@RequestParam(required = true, value = "id") Integer id) {
        try {
            categoryBo.removeById(id);
            return "redirect:list";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    @RequestMapping(value = "category/{id}", method = RequestMethod.GET)
    public String getInfo(@PathVariable(value = "id") Integer id,
                          HttpServletRequest request,
                          ModelMap model) {
        try {
            model.addAttribute("category", categoryBo.getCategoryById(id));
            return "category-details";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    @RequestMapping(value = "category/new", method = RequestMethod.GET)
    public String create(HttpServletRequest request, ModelMap model) {
        return "category-new";
    }

    @RequestMapping(value = "category/create", method = RequestMethod.POST)
    public String create(@RequestParam(required = true, value = "name") String name,
                         @RequestParam(required = true, value = "desc") String desc) {
        try {
            categoryBo.save(name, desc);
            return "redirect:list";
        } catch (Exception e) {
            return "error";
        }
    }

    @RequestMapping(value = "category/{id}/edit", method = RequestMethod.GET)
    public String edit(@PathVariable(value = "id") Integer id,
                       ModelMap model) {
        try {
            CategoryEntity cate = categoryBo.getCategoryById(id);
            model.addAttribute("category", cate);
            return "category-edit";
        } catch (Exception e) {
            return "error";
        }
    }

    @RequestMapping(value = "category/update", method = RequestMethod.POST)
    public String update(@RequestParam(required = true, value = "id") Integer id,
                         @RequestParam(required = true, value = "name") String name,
                         @RequestParam(required = true, value = "desc") String desc) {
        try {
            categoryBo.save(id, name, desc);
            return "redirect:list";
        } catch (Exception e) {
            return "error";
        }
    }
}