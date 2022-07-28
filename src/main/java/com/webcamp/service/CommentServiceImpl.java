package com.webcamp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webcamp.dao.CommentDAO;
import com.webcamp.vo.CommentVO;

@Service
public class CommentServiceImpl implements CommentService{
	
	@Autowired
	CommentDAO commentDAO;
	
	@Override
	public int insert(CommentVO vo) { 
		return commentDAO.insert(vo);
	}
	@Override
	public int update(CommentVO vo) {
		return commentDAO.update(vo);
	}
	@Override
	public int delete(int seq) {
		return commentDAO.delete(seq);
	}
	@Override
	public CommentVO getComment(int seq) { 
		return commentDAO.getComment(seq);
	}
	@Override
	public List<CommentVO> getCommentList(){ 
		return commentDAO.getCommentList();
	}
	
	

}
