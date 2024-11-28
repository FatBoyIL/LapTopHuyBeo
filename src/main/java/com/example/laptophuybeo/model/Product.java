package com.example.laptophuybeo.model;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long ProductId;
    private String tensanpham;
    private int soluong;
    private String hinhanh;
    private double gia;
    private String mota;
    private String cauhinh;
    private boolean trangthai;
    private int baohanh;
    @CreationTimestamp
    private LocalDateTime createdOn;
    @UpdateTimestamp
    private LocalDateTime updatedOn;
    @OneToMany(mappedBy = "product",cascade = CascadeType.REMOVE)
    private Set<Comment> comment = new HashSet<>();
}
