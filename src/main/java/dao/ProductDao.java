package dao;

import java.util.ArrayList;
import java.util.List;

import vo.ProductVO;

/*
 *  DB(DataBase) - 개념
 *   - 공유, 저장, 통합, 운영
 * 	DBMS(DataBase Management System) - 시스템(오라클, MySQL)
 * 	 -중복의 최소화 (Unique, 유일성) : Primary Key
 *   -데이터 불일치의 최소화 (무결성) : Foreign Key
 */
public class ProductDao {
	// List : 인터페이스
	List<ProductVO> listOfProducts = new ArrayList<ProductVO>();
		
	// 싱글톤(메모리에 객체를 1회 생성해서 공유해서 사용)으로 조건 충족
	private	static	ProductDao	instance = new ProductDao();
	public 	static	ProductDao getInstance() {
		return instance;
	}
	private			ProductDao() {
		//생성자(상품 아이디, 상품 명, 상품 가격 초기화)
	      ProductVO phone = new ProductVO("P1234","iPhone 6s", 800000);
	      //상품 설명
	      phone.setDescription("4.7-inch, 1334x750 Renina HD display."
	            + "8-megapixel iSight Camera");
	      //분류
	      phone.setCategory("Smart Phone");
	      //제조사
	      phone.setManufacturer("Apple");
	      //재고 수
	      phone.setUnitsInStock(1000);
	      //신상품 or 중고품 or 재생품
	      phone.setCondition("New");
	      //이미지 파일명
	      phone.setFilename("P1234.jpg");
	      
	      //-------------------------------휴대폰 등록 끝--------------------------------
	      
	      //-------------------------------노트북 등록 시작--------------------------------
	      //생성자(상품 아이디, 상품 명, 상품 가격 초기화)
	      ProductVO notebook = new ProductVO("P1235","LG PC 그램", 1500000);
	      //상품 설명
	      notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation"
	            + "Intel Core processors");
	      //분류
	      notebook.setCategory("Notebook");
	      //제조사
	      notebook.setManufacturer("LG");
	      //재고 수
	      notebook.setUnitsInStock(1000);
	      //신상품 or 중고품 or 재생품
	      notebook.setCondition("Refurbished");
	      //이미지 파일명
	      notebook.setFilename("P1235.jpg");
	      //-------------------------------노트북 등록 끝--------------------------------
	      
	      //-------------------------------태블릿 등록 시작--------------------------------
	      //생성자(상품 아이디, 상품 명, 상품 가격 초기화)
	      ProductVO tablet = new ProductVO("P1236","Galaxy Tab S", 900000);
	      //상품 설명
	      tablet.setDescription("212.8*125.6*6.6m, Super AMOLED display, "
	            + "Octa-Core processor");
	      //분류
	      tablet.setCategory("Tablet");
	      //제조사
	      phone.setManufacturer("Samsung");
	      //재고 수
	      tablet.setUnitsInStock(1000);
	      //신상품 or 중고품 or 재생품
	      tablet.setCondition("Old");
	      //이미지 파일명
	      tablet.setFilename("P1236.jpg");
	      //-------------------------------태블릿 등록 끝--------------------------------
	      listOfProducts.add(phone);
	      listOfProducts.add(notebook);
	      listOfProducts.add(tablet);
		
	}
	
	// ProductVo 객체 타입의 List 변수 listOfProducts에 저장된 모든 상품 목록을 가져옴
	// List<ProductVo>
	// 상품 목록
	public List<ProductVO> getAllProducts(){
		return listOfProducts;
	}
		
}
