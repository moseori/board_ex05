package me.light.mapper;

import java.util.List;

import me.light.model.BoardVO;
import me.light.model.Criteria;

public interface BoardMapper {
	List<BoardVO> getList(Criteria criteria);

	BoardVO get(Long bno);

	void insert(BoardVO vo);

	void update(BoardVO vo);

	void delete(Long bno);

	Integer totalCount(Criteria criteria);
}
