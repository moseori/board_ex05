package me.light.service;

import java.util.List;

import me.light.model.BoardVO;

public interface BoardService {
	List<BoardVO> readAll();

	BoardVO read(Long bno);

	void insert(BoardVO vo);

	void update(BoardVO vo);

	void delete(Long bno);
}
