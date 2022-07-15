package me.light.service;

import java.util.List;

import me.light.model.BoardVO;

public interface BoardService {
	List<BoardVO> readAll();

	BoardVO read(Long bno);

	void register(BoardVO vo);

	void modify(BoardVO vo);

	void remove(Long bno);
}
