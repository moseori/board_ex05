package me.light.data;

import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import me.light.AppTest;
import me.light.mapper.BoardMapper;
import me.light.model.BoardVO;

public class DataInserTest extends AppTest {

	@Autowired
	BoardMapper mapper;

	@Test
	@Ignore
	public void dataInsert() {
		for (int i = 1; i <= 412; i++) {
			BoardVO vo = new BoardVO();
			vo.setTitle("제목 : 페이징 처리 연습" + i);
			vo.setContent("내용 : 페이징 처리 연습" + i);
			vo.setWriter("관리자");
			mapper.insert(vo);
		}
	}

	@Test
	public void dataInsert2() {
		for (int i = 1; i <= 210; i++) {
			BoardVO vo = new BoardVO();
			vo.setTitle("제목 : 검색 연습" + i);
			vo.setContent("내용 : 검색 연습" + i);
			vo.setWriter("관리자");
			mapper.insert(vo);
		}
	}
}
