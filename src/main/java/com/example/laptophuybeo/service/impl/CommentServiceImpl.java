package com.example.laptophuybeo.service.impl;

import com.example.laptophuybeo.model.Comment;
import com.example.laptophuybeo.model.Product;
import com.example.laptophuybeo.repository.CommentRepository;
import com.example.laptophuybeo.repository.ProductRepository;
import com.example.laptophuybeo.service.CommentService;
import org.springframework.stereotype.Service;

import java.util.Optional;
@Service
public class CommentServiceImpl implements CommentService {
    private CommentRepository commentRepository;
    private ProductRepository productRepository;

    public CommentServiceImpl(CommentRepository commentRepository, ProductRepository productRepository) {
        this.commentRepository = commentRepository;
        this.productRepository = productRepository;
    }

    @Override
    public void saveComment(Comment comment, Long productId) {
        Product product = productRepository.findById(productId).orElse(null);
        comment.setProduct(product);
        commentRepository.save(comment);
    }
}
