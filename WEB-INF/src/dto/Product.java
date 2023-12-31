package dto;
import java.io.Serializable; // 직렬화 클래스 연동

public class Product implements Serializable { // 인터페이스 선언

	private static final long serialVersionUID = -4274700572038677000L;

	private String productId;	//상품 아이디
	private String pname;		//상품명
	private Integer unitPrice; //상품 가격
	private String description; //상품 설명
	private String manufacturer;//위치 
	private String category; 	//분류
	private long unitsInStock; //블로그 리뷰수
	private String condition; 	//신상품 or 중고품 or 재생품
    
    private String imageText;  // 이미지 텍스트
    private String link; // 링크 추가함 
    
    private String fileName; 	// 파일 이름 변수
    private int quantity;	//장바구니에 담은 개수 -> 나는 저장목록
    
    public Product() {
		super();
	}

	public Product(String productId, String pname, Integer unitPrice) {
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}
    

	public String getProductId() {
		return productId;
	}

	public String getPname() {
		return pname;
	}

    public void setPname(String pname) {
		this.pname = pname;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManufacturer() {
		return manufacturer;
	}

    public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}
    
     public String getImageText() {
        return imageText;
    }

    public void setImageText(String imageText) {
        this.imageText = imageText;
    }
    
     public String getLink() { //링크 추가
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
    
    public void setFileName(String fileName) { // 파일 이름 설정
	this.fileName = fileName;
}
    
    public int getQuantity() {
	return quantity;
}

public void setQuantity(int quantity) {
	this.quantity = quantity;
}

 public String getFileName() { // 파일 이름 리턴
	return fileName;
}

   
    public Product(String productId, String pname) {
    this.productId = productId;
    this.pname = pname;
    // 나머지 필드는 기본값으로 초기화
        
}
}




