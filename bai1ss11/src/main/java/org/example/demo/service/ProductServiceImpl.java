package org.example.demo.service;
import org.example.demo.Model.Product;
import java.util.*;

public class ProductServiceImpl implements ProductService {

    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "iPhone 15", 25000000, "Hàng xịn", "Apple"));
        products.put(2, new Product(2, "Samsung S24", 22000000, "Flagship Samsung", "Samsung"));
        products.put(3, new Product(3, "Xiaomi 13", 15000000, "Giá mềm", "Xiaomi"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> result = new ArrayList<>();
        for (Product p : products.values()) {
            if (p.getName().toLowerCase().contains(name.toLowerCase())) {
                result.add(p);
            }
        }
        return result;
    }
}

