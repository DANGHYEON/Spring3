package com.iu.s1.bankbook;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.s1.util.Pager;

@Service
public class BankbookService {
	
	@Autowired
	private BankBookDAO bankBookDAO;
	
	
	
	public int setUpdate(BankBookDTO bankBookDTO) {
		return bankBookDAO.setUpdate(bankBookDTO);
	}
	
	public int setDlelte(Long bookNumber) {
		return bankBookDAO.setDelete(bookNumber);
	}
	
	
	public BankBookDTO getSelect(BankBookDTO bankBookDTO) {
		
		return bankBookDAO.getSelect(bankBookDTO);
	}
	
	public List<BankBookDTO> getList(Pager pager){
		pager.makeRow();
		return	bankBookDAO.getList(pager);
		
	}
	
	public int setInsert(BankBookDTO bankBookDTO) {
		
		return	bankBookDAO.setInsert(bankBookDTO);
		
	}
	
	
	
	

}
