package com.example.board.common.dto;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class PageInfo {
		
		// 현재 페이지
		private int currentPage;
		// 게시글 갯수
		private int listCount;
		private int pageLimit;
		// 최대 페이지
		private int maxPage;
		// 시작 페이지
		private int startPage;
		// 끝 페이지
		private int endPage;
		private int boardLimit;
		
		public PageInfo(int currentPage, int listCount, int pageLimit, int maxPage, int startPage, int endPage,
				int boardLimit) {
			super();
			this.currentPage = currentPage;
			this.listCount = listCount;
			this.pageLimit = pageLimit;
			this.maxPage = maxPage;
			this.startPage = startPage;
			this.endPage = endPage;
			this.boardLimit = boardLimit;
		}
}
