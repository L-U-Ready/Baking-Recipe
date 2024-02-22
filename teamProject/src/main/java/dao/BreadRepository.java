package dao;

import java.util.ArrayList;

import dto.Bread;

public class BreadRepository {
	
	private ArrayList<Bread> listOfBreads = new ArrayList<Bread>();
	private static BreadRepository instance = new BreadRepository();
	
	public static BreadRepository getInstance() {
			return instance;
	}
	
	public BreadRepository() {
		
		Bread white = new Bread("식빵", "white");
		white.setTime("2시간 이내");
		white.setIngredient("강력분 300g ,물 or 우유 180g ,소금 6g ,버터 or 식용유 20g ,꿀 or 설탕 20g ,분유 10g ,드라이이스트 8g");
		white.setFilename("white.jpg");
		white.setRecipe("white_recipe.jpg");
		listOfBreads.add(white);
		
		Bread salt = new Bread("소금빵", "salt");
		salt.setTime("2시간 이내");
		salt.setIngredient("강력분 125g ,박력분 125g ,설탕 20g ,버터 20g ,소금 5g ,드라이이스트 4g ,우유 170g ,토핑용 굵은소금 2g ,계란물 또는 우유 약간, 버터 50g ,소금 1g");
		salt.setFilename("salt.jpg");
		salt.setRecipe("salt_recipe.jpg");
		listOfBreads.add(salt);
		
		Bread cream = new Bread("크림빵", "cream");
		cream.setTime("2시간 이상");
		cream.setIngredient("우유 250ml ,노른자 2개 ,설탕 50g ,박력분(또는 옥수수전분) 25g ,무염버터 15g ,바닐라익스트랙 1tsp, 강력분 200g ,설탕 30g ,소금 4g ,인스턴트드라이이스트 4g ,계란 30g ,우유 100g ,무염버터 25g");
		cream.setFilename("cream.jpg");
		cream.setRecipe("cream_recipe.jpg");
		listOfBreads.add(cream);
		
		Bread sausage = new Bread("소세지빵", "sausage");
		sausage.setTime("2시간 이내");
		sausage.setIngredient("강력분 300g ,드라이이스트 6g ,소금 4g ,설탕 35g ,버터 30g ,우유 140ml ,계란 1개, 각종 토핑");
		sausage.setFilename("sausage.jpg");
		sausage.setRecipe("sausage_recipe.jpg");
		listOfBreads.add(sausage);


	
	}
	
	public ArrayList<Bread> getAllBreads() {
		return listOfBreads;
	}
	
	public Bread getBreadByName(String bname) {
		Bread breadByName = null;
		
		for (int i = 0; i < listOfBreads.size(); i++) {
			Bread bread = listOfBreads.get(i);
			if (bread != null && bread.getBname() != null && bread.getBname().equals(bname)) {
				breadByName = bread;
				break;
			}
		}
		return breadByName;
	}
	
	public void addBread(Bread bread) {
		listOfBreads.add(bread);
	}
	
	
}
