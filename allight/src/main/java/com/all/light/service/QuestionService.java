package com.all.light.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.all.light.dao.QuestionDAO;
import com.all.light.dto.QuestionDTO;
import com.all.light.util.PageUtil;

public class QuestionService {
	@Autowired
	private QuestionDAO qesDAO;
	//기업
	public ArrayList<QuestionDTO> list(PageUtil pinfo) {
		return qesDAO.list(pinfo);
	}

	public PageUtil getPageInfoById(int nowPage, String id) {
		int totalCount = qesDAO.getTotalCntById(id);
		PageUtil pinfo = new PageUtil(nowPage, totalCount);
		return pinfo;
	}

	public void insertWrite(QuestionDTO qdto, HttpSession session) {
		qdto.setQid((String) session.getAttribute("COID"));
		qesDAO.insertWrite(qdto);		
	}

	public QuestionDTO detail(QuestionDTO qdto) {
		return qesDAO.datail(qdto);
	}

	public ArrayList<QuestionDTO> detailcomm(QuestionDTO qdto) {
		return qesDAO.detailcomm(qdto);
	}

	public void delete(QuestionDTO qdto) {
		qesDAO.delete(qdto);
	}

	public void update(QuestionDTO qdto, HttpSession session) {
		qesDAO.update(qdto);
	}
	
	//관리자
	public PageUtil getPageInfo(int nowPage) {
		int totalCount = qesDAO.getTotalCnt();
		PageUtil pinfo = new PageUtil(nowPage, totalCount);
		return pinfo;
	}
	
	public ArrayList<QuestionDTO> totalList(PageUtil pinfo) {
		return qesDAO.totalList(pinfo);
	}

	public PageUtil getPageInfoByTitle(int nowPage, String word) {
		int totalCount = qesDAO.getTotalCntByTitle(word);
		PageUtil pinfo = new PageUtil(nowPage, totalCount);
		return pinfo;
	}
	public ArrayList<QuestionDTO> listByTitle(PageUtil pinfo) {
		return qesDAO.listByTitle(pinfo);
	}
	
	public PageUtil searchPageInfoById(int nowPage, String word) {
		int totalCount = qesDAO.searchPageInfoById(word);
		PageUtil pinfo = new PageUtil(nowPage, totalCount);
		return pinfo;
	}
	public ArrayList<QuestionDTO> listById(PageUtil pinfo) {
		return qesDAO.listById(pinfo);
	}

	//댓글
	public void insertComm(QuestionDTO qdto) {
		qesDAO.insertComm(qdto);
	}

	public void deleteComm(QuestionDTO qdto) {
		qesDAO.deleteComm(qdto);
	}




}
