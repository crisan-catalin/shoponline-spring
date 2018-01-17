package com.iquest.ShopOnline.Model;


import javax.persistence.*;

@Entity
@Table(name = "Products")
public class Products {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(nullable = false)
    private String categoryId;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private Integer price;

    @Column(nullable = false)
    private Integer stock;

    @Column(name = "image1_path", nullable = false)
    private String imgPath1;

    @Column(name = "image2_path", nullable = false)
    private String imgPath2;

    protected Products() {
    }

    public Products(String categoryId, String name, Integer price, Integer stock, String imgPath1, String imgPath2) {
        this.categoryId = categoryId;
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.imgPath1 = imgPath1;
        this.imgPath2 = imgPath2;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getImgPath1() {
        return imgPath1;
    }

    public void setImgPath1(String imgPath1) {
        this.imgPath1 = imgPath1;
    }

    public String getImgPath2() {
        return imgPath2;
    }

    public void setImgPath2(String imgPath2) {
        this.imgPath2 = imgPath2;
    }
}