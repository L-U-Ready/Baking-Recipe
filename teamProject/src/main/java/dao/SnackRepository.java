package dao;

import java.util.ArrayList;

import dto.Snack;

public class SnackRepository {
	
	private ArrayList<Snack> listOfSnacks = new ArrayList<Snack>();
	private static SnackRepository instance = new SnackRepository();
	
	public static SnackRepository getInstance() {
			return instance;
	}
	
	public SnackRepository() {
		
		Snack macaron = new Snack("마카롱", "macaron");
		macaron.setTime("2시간 이내");
		macaron.setIngredient("아몬드가루 40g, 슈거파우더 80g, 달걀흰자 40g, 코코아가루 5g, 설탕 20g, 생크림 20g, 다크초콜릿 60g, 버터 5g");
		macaron.setFilename("macaron.jpg");
		macaron.setRecipe("macaron_recipe.jpg");
		listOfSnacks.add(macaron);
		
		Snack cannle = new Snack("까눌레", "cannle");
		cannle.setTime("2시간 이상");
		cannle.setIngredient("우유 450g, 버터 35g, 바닐라빈 1개, 계란 1개, 노른자 1개, 바닐라익스트랙 2g, 박력분 125g, 설탕 160g, 럼레진 20g");
		cannle.setFilename("cannle.jpg");
		cannle.setRecipe("cannle_recipe.jpg");
		listOfSnacks.add(cannle);
		
		Snack scone = new Snack("스콘", "scone");
		scone.setTime("30분 이내");
		scone.setIngredient("박력분 200g, 베이킹파우더 5g, 우유 100g, 바닐라 익스트랙 3g, 설탕 35g, 소금 1꼬집, 버터 100g");
		scone.setFilename("scone.jpg");
		scone.setRecipe("scone_recipe.jpg");
		listOfSnacks.add(scone);
		
		Snack financier = new Snack("휘낭시에", "financier");
		financier.setTime("2시간 이내");
		financier.setIngredient("박력분 50g ,아몬드가루 50g ,버터 45g ,바닐라익스트랙 1큰술 ,설탕 65g ,꿀 50g ,달걀 흰자 3개 ,소금 약간");
		financier.setFilename("financier.jpg");
		financier.setRecipe("financier_recipe.jpg");
		listOfSnacks.add(financier);


	
	}
	
	public ArrayList<Snack> getAllSnacks() {
		return listOfSnacks;
	}
	
	public Snack getSnackByName(String sname) {
		Snack snackByName = null;
		
		for (int i = 0; i < listOfSnacks.size(); i++) {
			Snack snack = listOfSnacks.get(i);
			if (snack != null && snack.getSname() != null && snack.getSname().equals(sname)) {
				snackByName = snack;
				break;
			}
		}
		return snackByName;
	}
	
	public void addSnack(Snack snack) {
		listOfSnacks.add(snack);
	}
	
	
}
