package com.kh.amd.common;

import com.kh.amd.board.model.vo.PageInfo;

public class Pagination {
	
	public static PageInfo getPageInfo(int currentPage, int listCount) {
		PageInfo pi = null;
		
		int limit = 5; //한페이지당 10개의 글을 넣겠다.
		int buttonCount = 10; //밑에 [1][2][3][4][5][6][7][8][9][10] 그리고 [다음]을 눌러 [11]로 넘어간다.
		int maxPage; //얘는 몰라도 괜찮음
		int startPage;
		int endPage;
		
		//총 페이지 수 계산
		//예) 123개면 13페이지
		maxPage = (int)((double)listCount / limit + 0.9);
		
		//현재 페이지에 보여질 시작 페이지 수
		//아래쪽에 페이지 수가 10개씩 보여지게 한다면
		//1, 11, 21, 31, .....
		startPage = (((int)((double)currentPage / buttonCount + 0.9)) - 1) * buttonCount + 1;
		
		endPage = startPage + buttonCount - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		return pi;
		
	}

}
