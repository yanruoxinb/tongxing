package com.siweisoft.base;


import java.util.List;

public class PageInfo<E> {
	private int totalCount;//总记录数
	private int pageIndex;//当前页
	private int pageCount;//总页数
	private int pageSize;//页面大小
	private List<E> results;//页面结果集

	public PageInfo() {
	}

	public PageInfo(int totalCount, int pageIndex, int pageSize, List<E> results) {
		this.totalCount = totalCount;
		this.pageIndex = pageIndex;
		this.pageSize = pageSize;
		this.results = results;
	}

	public PageInfo(int pageIndex, int pageSize) {
		this.pageIndex = pageIndex;
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List<E> getResults() {
		return results;
	}

	public void setResults(List<E> results) {
		this.results = results;
	}
	public int   getpagecount(int total,int pageSize){
		if(total%pageSize==0){
			pageCount=total/pageSize;
		}else{
			pageCount=total/pageSize+1;
		}
		return pageCount;
	}
}
