package dto;

public class Bread {
	
	//private String snackId;		//디저트 아이디
	private String bname;			//상품명
	private String e_bname;			//상품명-영문
	private String recipe;			//상품 설명
	private String time;			//소요 시간
	private String ingredient;		//재료	
	private String filename;		//이미지 파일명
	
	public Bread() {
		super();
	}
	
	public Bread(String bname, String e_bname) {
		this.bname = bname;
		this.e_bname = e_bname;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}
	
	public String getEbname() {
		return e_bname;
	}

	public void setEbname(String e_bname) {
		this.e_bname = e_bname;
	}

	public String getRecipe() {
		return recipe;
	}

	public void setRecipe(String recipe) {
		this.recipe = recipe;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getIngredient() {
		return ingredient;
	}

	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

}
