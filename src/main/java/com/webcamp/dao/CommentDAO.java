package com.webcamp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.session.SqlSession;

import com.webcamp.vo.CommentVO;

@Repository("CommentDAO")
public class CommentDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insert(CommentVO vo) {
		int result =  sqlSession.insert("Comment.insert", vo);
		return result;
	}

	public int delete(int seq) {
		int result =  sqlSession.delete("Comment.delete", seq);
		return result;
	}
	public int update(CommentVO vo) {
		int result =  sqlSession.update("Comment.update", vo);
		return result;
	}
	
	public CommentVO getComment(int seq) {
		CommentVO result  = sqlSession.selectOne("Comment.getComment", seq);
		return result;
	}
	
	public List<CommentVO> getCommentList(){
		List<CommentVO> result =  sqlSession.selectList("Comment.getCommentList");
		return result;
	}
}
