package com.emerii;

public class Producto {
   private int id;
   private String producto;


    public Producto() {
        
    }

    public Producto(int id, String producto) {
        this.id = id;
        this.producto = producto;

    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }   
}