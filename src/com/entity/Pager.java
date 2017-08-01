package com.entity;

import java.util.ArrayList;
import java.util.List;

public class Pager<T> {

	private int pageNow;//当前页面
	
	private int pageSize=5;//每次多少条
	
	private int pageCount;//总页数
	
	private int totalCount;//总条数  
	
	private List<T> lists = new ArrayList<T>();

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public List<T> getLists() {
		return lists;
	}

	public void setLists(List<T> lists) {
		this.lists = lists;
	}

	@Override
	public String toString() {
		return "Pager [pageNow=" + pageNow + ", pageSize=" + pageSize + ", pageCount=" + pageCount + ", totalCount="
				+ totalCount + ", lists=" + lists + "]";
	}
	
}
