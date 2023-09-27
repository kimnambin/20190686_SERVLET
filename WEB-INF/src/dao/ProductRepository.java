package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅

	
    //여기에다 원하는 상품 3개 넣으면 됨
    public ProductRepository() {
        Product food1 = new Product("P1234", "트러플 스테이크", 30900);
		food1.setDescription("[연남/홍대 맛집] 대화하며 식사하기 좋은 연남동 데이트 코스 <다옴383>");
		food1.setCategory("맛집");
		food1.setManufacturer("서울");
		food1.setUnitsInStock(1000);
		food1.setCondition("New");
        

        Product food2 = new Product("P1235", "통삼겹 로제 파스타", 18900);
		food2.setDescription("[송리단길 맛집] 실패 없는 잠실 데이트 코스   <송리단취향>");
		food2.setCategory("맛집");
		food2.setManufacturer("서울");
		food2.setUnitsInStock(1000);
		food2.setCondition("Refurbished");

		Product food3 = new Product("P1236", "중식당", 6000);
		food3.setDescription("[성결대 맛집] 알 사람들은 다 아는 성결대 근처 맛집<중찬미식>");
		food3.setCategory("맛집");
		food3.setManufacturer("경기");
		food3.setUnitsInStock(1000);
		food3.setCondition("Old");
                
        
        Product cafe1 = new Product("P1237", "딸기 빙수", 14000);
		cafe1.setDescription("[연남동 카페] 딸기 빙수가 맛있는 <호안끼엠>");
		cafe1.setCategory("카페");
		cafe1.setManufacturer("서울");
		cafe1.setUnitsInStock(1000);
		cafe1.setCondition("New");
        

        Product cafe2 = new Product("P1238", "홍라드 토스트", 6500);
		cafe2.setDescription("[행궁동 카페] 다양한 컨셉으로 사진 찍기 좋은 토스트 맛집 <홍라드>");
		cafe2.setCategory("카페");
		cafe2.setManufacturer("경기");
		cafe2.setUnitsInStock(1000);
		cafe2.setCondition("Refurbished");

		Product cafe3 = new Product("P1239", "진저베어 클래식 미트파이", 8500);
		cafe3.setDescription("[송리단길 카페] 송리단길에서 제일 유명한 카페 <진저베어>");
		cafe3.setCategory("카페");
		cafe3.setManufacturer("서울");
		cafe3.setUnitsInStock(1000);
		cafe3.setCondition("Old");
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(food1);
		listOfProducts.add(food2);
		listOfProducts.add(food3);
        listOfProducts.add(cafe1);
        listOfProducts.add(cafe2);
        listOfProducts.add(cafe3);
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
}
