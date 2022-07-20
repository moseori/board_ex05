package me.light.service;

import java.util.List;

import me.light.model.BoardVO;
import me.light.model.Criteria;

public interface BoardService {
	List<BoardVO> readAll(Criteria criteria);

	BoardVO read(Long bno);

	void register(BoardVO vo);

	void modify(BoardVO vo);

	void remove(Long bno);

	Integer getTotal();
}
