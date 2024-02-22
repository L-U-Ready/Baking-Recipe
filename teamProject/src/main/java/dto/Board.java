package dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Board {
	private String title;
    private String author;
    private String password;
    private String content;
    //private Date createdDate;
    
    private boolean deleted;

    public Board(String title, String author, String password, String content) {
        this.title = title;
        this.author = author;
        this.password = password;
        //this.createdDate = new Date();
        this.content = content;
        this.deleted = false; // 기본값으로 삭제되지 않은 상태로 설정
    }
    
    public boolean isDeleted() {
        return deleted;
    }

    public void setDeleted(boolean deleted) {
        this.deleted = deleted;
    }

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
/*
	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
*/
    
}
