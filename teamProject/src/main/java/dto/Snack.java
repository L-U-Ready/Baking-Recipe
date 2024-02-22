package dto;

public class Snack {
	
	//private String snackId;		//디저트 아이디
	private String sname;			//상품명
	private String e_sname;			//상품명-영문
	private String recipe;			//상품 설명
	private String time;			//소요 시간
	private String ingredient;		//재료	
	private String filename;		//이미지 파일명
	
	public Snack() {
		super();
	}
	
	public Snack(String sname, String e_sname) {
		this.sname = sname;
		this.e_sname = e_sname;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}
	
	public String getEsname() {
		return e_sname;
	}

	public void setEsname(String e_sname) {
		this.e_sname = e_sname;
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
