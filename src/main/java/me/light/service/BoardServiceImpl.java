package me.light.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import me.light.mapper.BoardMapper;
import me.light.model.BoardVO;

@Service("aaa")
@Primary
public class BoardServiceImpl implements BoardService {

	private BoardMapper mapper;

	@Autowired
	public BoardServiceImpl(BoardMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<BoardVO> readAll() {
		return mapper.getList();
	}

	@Override
	public BoardVO read(Long bno) {
		return mapper.get(bno);
	}

	@Override
	public void insert(BoardVO vo) {
		mapper.insert(vo);
	}

	@Override
	public void update(BoardVO vo) {
		mapper.update(vo);
	}

	@Override
	public void delete(Long bno) {
		mapper.delete(bno);
	}

}