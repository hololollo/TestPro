package org.gangreung.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// 인터페이스 : 선언만.
public interface SqlLang {
	String SELECT_ALL_NOTICE = "select * from notice order by resdate desc";
	String SELECT_NOTICE_BYNO = "select * from notice where no=?";
	String UPD_NOTICE = "update notice set title=?, content=? where no=?";
	String VISITED_UPD_NOTICE = "update notice set visited=visited+1 where no=?";
	String DEL_NOTICE = "delete from notice where no=?";
	
	
	String SELECT_ALL_MEMBER = "select * from member order by id"; // 목록
	String SELECT_ONE_MEMBER = "select * from member where id=?"; // 로그인
	String INS_MEMBER = "insert into member values(?,?,?,?,?)"; // 회원가입
	String UPD_MEMBER = "update member set pw=?, name=?, email=?, tel=? where id=?"; // 회원정보수정
	String DEL_MEMBER = "delete from member where id=?"; // 회원삭제
	
	String SELECT_ALL_QNA = "select * from qna order by parno desc, plevel asc";
	String SELECT_QNA_BYNO = "select * from qna where no=?";
	String DEL_ANSWER = "delete from qna where no=?";
	String DEL_QUESTION = "delete from qna where parno=?"; // 질문, 답변 전부 삭제된다.
	String UPD_QNA = "update qna set title=?,content=?, where no=?";
	String VISITED_UPD_QNA = "update qna set visited=visited+1 where no=?"; // 조회수
	
	String SELECT_ALL_TRAFFIC = "select * from traffic order by ttype desc, no asc";	
	String UPD_TRAFFIC = "update traffic set route=?, coment=? where tno=?";
	String DEL_TRAFFIC = "delete from traffic where tno=?";	
	
	
	
	
	Connection connect();
	void close(Connection con, PreparedStatement pstmt);
	void close(Connection con, PreparedStatement pstmt, ResultSet rs);
}



