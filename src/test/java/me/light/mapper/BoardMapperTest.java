package me.light.mapper;

import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import me.light.AppTest;
import me.light.model.BoardVO;
import me.light.model.Criteria;

public class BoardMapperTest extends AppTest {

	@Autowired
	BoardMapper mapper;

	@Test
	@Ignore
	public void getListTest() {
		Criteria criteria =new Criteria();
		mapper.getList(criteria);
	}

	@Test
	@Ignore
	public void getTest() {
		mapper.get(1L);
	}

	@Test
	@Ignore
	public void insertTest() {
		BoardVO vo = new BoardVO();
		vo.setTitle("제목테스트");
		vo.setContent("내용테스트");
		vo.setWriter("테스터");
		mapper.insert(vo);
	}

	@Test
	@Ignore
	public void updateTest() {
		BoardVO vo = new BoardVO();
		vo.setBno(5L);
		vo.setTitle("제목테스트_수정");
		vo.setContent("내용테스트_수정");
		mapper.update(vo);
	}

	@Test
	@Ignore
	public void deleteTest() {
		mapper.delete(5L);
	}

}
