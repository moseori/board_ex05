package me.light.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Criteria {
	private int page;
	private int perPageNum;

	public Criteria() {
		this(1, 10);
	}

	public Criteria(int page, int perPageNum) {
		this.page = page;
		this.perPageNum = perPageNum;
	}

	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}

}
