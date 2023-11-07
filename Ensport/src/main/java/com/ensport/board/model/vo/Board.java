package com.ensport.board.model.vo;

import java.sql.Date;

public class Board {
	
	private int boardNo;
	private String userNo;
	private String boardTitle;
	private String boardContent;
	private Date createDate;
	private int boardCount;
	private String status;
	private String adminYN;
	
	public Board() {
		super();
	}

	public Board(int boardNo, String userNo, String boardTitle, String boardContent, Date createDate, int boardCount,
			String status, String adminYN) {
		super();
		this.boardNo = boardNo;
		this.userNo = userNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.createDate = createDate;
		this.boardCount = boardCount;
		this.status = status;
		this.adminYN = adminYN;
	}
	

	public Board(int boardNo, String userNo, String boardTitle, Date createDate, int boardCount) {
		super();
		this.boardNo = boardNo;
		this.userNo = userNo;
		this.boardTitle = boardTitle;
		this.createDate = createDate;
		this.boardCount = boardCount;
	}
	
	

	public Board(String userNo, String boardTitle, String boardContent) {
		super();
		this.userNo = userNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
	}

	public Board(int boardNo, String userNo, String boardTitle, String boardContent, Date createDate) {
		super();
		this.boardNo = boardNo;
		this.userNo = userNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.createDate = createDate;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public int getBoardCount() {
		return boardCount;
	}

	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAdminYN() {
		return adminYN;
	}

	public void setAdminYN(String adminYN) {
		this.adminYN = adminYN;
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", userNo=" + userNo + ", boardTitle=" + boardTitle + ", boardContent="
				+ boardContent + ", createDate=" + createDate + ", boardCount=" + boardCount + ", status=" + status
				+ ", adminYN=" + adminYN + "]";
	}
	
	
}
