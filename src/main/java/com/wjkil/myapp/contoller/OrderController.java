package com.wjkil.myapp.contoller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.wjkil.myapp.dto.BoardDto;
import com.wjkil.myapp.dto.FinalDto;
import com.wjkil.myapp.dto.MenuDto;
import com.wjkil.myapp.dto.ModalDto;
import com.wjkil.myapp.dto.NowOrderDto;
import com.wjkil.myapp.dto.OrderDto;
import com.wjkil.myapp.dto.PriceDto;
import com.wjkil.myapp.dto.TableDto;
import com.wjkil.myapp.service.OrderService;

@Controller
public class OrderController {
	   private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	   @Autowired
	   OrderService orderService;
	   
	   
	/*
	 * @RequestMapping(value="/order",method=RequestMethod.GET)
	 * 
	 * @ResponseBody public int order(OrderDto dto) { logger.debug("/order"); return
	 * orderService.orderUpdate(dto);
	 * 
	 * }
	 */
	   

	   @RequestMapping(value="/table/detail",method=RequestMethod.GET)
	   @ResponseBody
	   public TableDto tableDetail(int tableNumber) {
		   logger.debug("/board/detail");
		   System.out.println("컨트롤러 들어감");
		   return orderService.tableDetail(tableNumber);
	   }
	   
	   @RequestMapping(value="/table/list",method=RequestMethod.GET)	   
	   @ResponseBody
	   public List<TableDto> tableList() {
		   logger.debug("/");

		   
		   return orderService.tableList();
		   
	   }
	   @RequestMapping(value="/table/priceDetail",method=RequestMethod.GET)
	   @ResponseBody
	   public PriceDto priceDetail(int tableNumber) {
		   logger.debug("/table/priceDetail");
		   System.out.println("컨트롤러 들어감");
		   return orderService.priceDetail(tableNumber);
	   }
	   
	   
	   
	   @RequestMapping(value="/table/menulist",method=RequestMethod.GET)	   
	   @ResponseBody
	   public List<MenuDto> menuList() {
		   logger.debug("/");
		   
		   return orderService.menuList();
		   
	   }
	   
	   @RequestMapping(value="/table/orderList",method=RequestMethod.GET)	   
	   @ResponseBody
	   public List<OrderDto> orderList(int tableNumber) {
		   logger.debug("/");

		   return orderService.orderList(tableNumber);
		   
	   }
	   
	   
	   @RequestMapping(value= "/table/updateModalOrder",method=RequestMethod.POST)
	   @ResponseBody
	   public int updateModalOrder(int tableNumber,int menuId) throws Exception {
		   logger.debug("/table/updateModalOrder");
		   return orderService.updateModalOrder(tableNumber, menuId);
	   }
	   
	   
	   
	   
	   @RequestMapping(value = "/table/clearModalOrder", method = RequestMethod.POST)
	   @ResponseBody
	   public int clearModalOrder(int tableNumber) throws Exception{
	      
	      logger.debug("/table/clearModalOrder");
	      
	      return orderService.clearModalOrder(tableNumber);
	   }
	   
	   
	   
	   
	/*
	 * @RequestMapping(value="/table/nowOrderList",method=RequestMethod.GET)
	 * 
	 * @ResponseBody public List<NowOrderDto> tableOrderList(int tableNumber) {
	 * logger.debug("/");
	 * 
	 * System.out.println("nowOrderList 컨트롤러 들어감"); return
	 * orderService.tableOrderList(tableNumber);
	 * 
	 * }
	 * 
	 */
	   
	   @RequestMapping(value= "/table/orderForFinal",method=RequestMethod.POST)
	   @ResponseBody
	   public int orderForFinal(int tableNumber, int menuId) throws Exception {
		   logger.debug("/table/order");
		   return orderService.orderForFinal(tableNumber, menuId);
	   }
	   @RequestMapping(value= "/table/order",method=RequestMethod.POST)
	   @ResponseBody
	   public int order(int tableNumber, int menuId) throws Exception {
		   logger.debug("/table/order");
		   return orderService.order(tableNumber, menuId);
	   }
	 
	   
	   @RequestMapping(value="/table/orderFirstList",method=RequestMethod.GET)	   
	   @ResponseBody
	   public List<OrderDto> orderFirstList() {
		   logger.debug("/table/orderFirstList");

		   return orderService.orderFirstList();
		   
	   }
	   
	   @RequestMapping(value= "/table/statusUpdate",method=RequestMethod.POST)
	   @ResponseBody
	   public int statusUpdate(int orderId) throws Exception {
		   logger.debug("/table/statusUpdate");
		   return orderService.statusUpdate(orderId);
	   }
	   
	   
	   
	   @RequestMapping(value= "/table/orderDelete",method=RequestMethod.POST)
	   @ResponseBody
	   public int orderDelete(int orderId) throws Exception {
		   logger.debug("/table/order");
		   return orderService.orderDelete(orderId);
	   }

	   @RequestMapping(value= "/table/finalInsert",method=RequestMethod.POST)
	   @ResponseBody
	   public int finalInsert(int orderId,String status) throws Exception {
		   logger.debug("/table/finalInsert");
		   return orderService.finalInsert(orderId, status);
	   }
	   
	   @RequestMapping(value= "/table/completeCash",method=RequestMethod.POST)
	   @ResponseBody
	   public int completeCash(int tableNumber) throws Exception {
		   logger.debug("/table/completeCash");
		   return orderService.completeCash(tableNumber);
	   }
	   
	   @RequestMapping(value="/table/tempOrderDetail",method= RequestMethod.GET)
	   @ResponseBody
	   public OrderDto tempOrderDetail(int orderId) {
		   logger.debug("/board/tempOrderDetail");
		   System.out.println("tempOrderDetail 컨트롤러 들어감");
		   return orderService.tempOrderDetail(orderId);
	   }
	  
	   
	   @RequestMapping(value="/table/todayList",method=RequestMethod.GET)	   
	   @ResponseBody
	   public List<FinalDto> todayList() {
		   logger.debug("/table/todayList");

		   return orderService.todayList();
		   
	   }
	   
	   
	   
	   
	   @RequestMapping(value= "/table/insertMenu",method=RequestMethod.POST)
	   @ResponseBody
	   public int insertMenu(MenuDto dto) throws Exception {
		   logger.debug("/table/order");
		   return orderService.insertMenu(dto);
	   }
	   
	   
	   @RequestMapping(value="/table/menuDetail",method= RequestMethod.GET)
	   @ResponseBody
	   public MenuDto menuDetail(int menuId) {
		   logger.debug("/table/menuDetail");
		   System.out.println("menuDetail 컨트롤러 들어감");
		   return orderService.menuDetail(menuId);
	   }
	   
	   
	   @RequestMapping(value= "/table/menuDelete",method=RequestMethod.GET)
	   @ResponseBody
	   public int menuDelete(int menuId) throws Exception {
		   logger.debug("/table/completeCash");
		   return orderService.menuDelete(menuId);
	   }
	   
	   
	   

}


