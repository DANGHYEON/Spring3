package com.iu.s1.bankbook;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/bankbook/*")
public class BankbookController {
		//pojo (plain Old Java Object)
	
	@Autowired
	private BankbookService bankbookService;
	
	
	
	@RequestMapping(value = "bankbookList.do", method = RequestMethod.GET)
	public ModelAndView list(ModelAndView mv) {
		
		ArrayList<BankBookDTO> ar = bankbookService.getList();
		
		for(BankBookDTO bankBookDTO : ar) {
			System.out.println(bankBookDTO.getBookName());
		}
		
		mv.setViewName("bankbook/bankbookList");
		
		return mv;
	}
	
	@RequestMapping("bankbookSelect.do")
	public String select(@RequestParam(defaultValue="1", value = "n") Integer num,String name, Model model) {
		System.out.println("bankbook select");
		System.out.println("Value : "+num);
		System.out.println("Name :" + name);
		BankBookDTO bankBookDTO = new BankBookDTO();
		bankBookDTO.setBookName("BookName");
	
		model.addAttribute("test", "iu");
		model.addAttribute("dto", bankBookDTO);
		
		return "bankbook/bankbookSelect";
	}
	
	@RequestMapping("bankbookInsert.do")
	public String insert(BankBookDTO bankBookDTO, Integer [] num) {
		System.out.println(bankBookDTO.getBookName());
		System.out.println("insert");
		return "redirect:../";
	}
	
	
		
}
