package haotc.java.sample.controller;

import haotc.java.sample.bo.OrderBo;
import haotc.java.sample.entity.OrderEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
public class OrderController {

    @Autowired
    private OrderBo orderBo;

    @RequestMapping(value = "order/list", method = RequestMethod.GET)
    public String list(ModelMap model) {
        try {
            List<OrderEntity> list = orderBo.getOrderList();
            model.addAttribute("orderList", list);
            return "order-list";
        } catch (Exception e) {
            return "error";
        }
    }

//    @RequestMapping(value = "order/delete", method = RequestMethod.GET)
//    public String delete(@RequestParam(required = true, value = "id") Integer id) {
//        try {
//            orderBo.removeById(id);
//            return "redirect:list";
//        } catch (Exception e) {
//            e.printStackTrace();
//            return "error";
//        }
//    }
//
//    @RequestMapping(value = "order/{id}", method = RequestMethod.GET)
//    public String getInfo(@PathVariable(value = "id") Integer id,
//                          HttpServletRequest request,
//                          ModelMap model) {
//        try {
//            model.addAttribute("order", orderBo.getOrderById(id));
//            return "order-details-admin";
//        } catch (Exception e) {
//            e.printStackTrace();
//            return "error";
//        }
//    }
//
//    @RequestMapping(value = "order/new", method = RequestMethod.GET)
//    public String create(ModelMap model) {
////        List<CategoryEntity> list = categoryBo.list();
////        final Map<Integer, String> cateMap = new HashMap<Integer, String>();
////        for (CategoryEntity cate : list) {
////            cateMap.put(cate.getId(), cate.getDescription());
////        }
////        Set<Map.Entry<Integer, String>> categories = cateMap.entrySet();
////        model.addAttribute("categoryList", categories);
////        model.addAttribute("order", new OrderModel());
//        return "order-new";
//    }
//
//    @RequestMapping(value = "order/create", method = RequestMethod.POST)
//    public String create(@ModelAttribute(value = "order") OrderModel order) {
//        try {
//            orderBo.save(order);
//            return "redirect:list";
//        } catch (Exception e) {
//            return "error";
//        }
//    }
//
//    @RequestMapping(value = "order/{id}/edit", method = RequestMethod.GET)
//    public String edit(@PathVariable(value = "id") Integer id,
//                       ModelMap model) {
//        try {
//            List<CategoryEntity> list = categoryBo.list();
//            final Map<Integer, String> cateMap = new HashMap<Integer, String>();
//            for (CategoryEntity cate : list) {
//                cateMap.put(cate.getId(), cate.getDescription());
//            }
//            Set<Map.Entry<Integer, String>> categories = cateMap.entrySet();
//            model.addAttribute("categoryList", categories);
//            OrderEntity order = orderBo.getOrderById(id);
//            OrderModel p = new OrderModel();
//            p.setId(order.getId());
//            p.setName(order.getName());
//            p.setShortDesc(order.getShortDesc());
//            p.setDetailDesc(order.getDetailDesc());
//            p.setQuantity(order.getQuantity());
//            p.setNumberOfSold(order.getNumberOfSold());
//            p.setUnitPrice(order.getUnitPrice());
//            model.addAttribute("order", p);
//            return "order-edit";
//        } catch (Exception e) {
//            return "error";
//        }
//    }
//
//    @RequestMapping(value = "order/update", method = RequestMethod.POST)
//    public String update(@ModelAttribute(value = "order") OrderModel order) {
//        try {
//            orderBo.save(order);
//            return "redirect:list";
//        } catch (Exception e) {
//            return "error";
//        }
//    }
}