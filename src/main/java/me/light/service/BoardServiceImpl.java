package me.light.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import me.light.mapper.BoardMapper;
import me.light.model.BoardVO;
import me.light.model.Criteria;

@Service("aaa")
@Primary
public class BoardServiceImpl implements BoardService {

	private BoardMapper mapper;

	@Autowired
	public BoardServiceImpl(BoardMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<BoardVO> readAll(Criteria criteria) {
		return mapper.getList(criteria);
	}

	@Override
	public BoardVO read(Long bno) {
		return mapper.get(bno);
	}

	@Override
	public void register(BoardVO vo) {
		mapper.insert(vo);
	}

	@Override
	public void modify(BoardVO vo) {
		mapper.update(vo);
	}

	@Override
	public void remove(Long bno) {
		mapper.delete(bno);
	}

	@Override
	public Integer getTotal(Criteria criteria) {
		return mapper.totalCount(criteria);
	}

}
