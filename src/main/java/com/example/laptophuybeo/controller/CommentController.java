package com.example.laptophuybeo.controller;

import com.example.laptophuybeo.model.Comment;
import com.example.laptophuybeo.service.CommentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CommentController {
    private CommentService commentService;

    public CommentController(CommentService commentService) {
        this.commentService = commentService;
    }
    @PostMapping("/{laptopId}/cmt")
    public String addComment(@PathVariable("laptopId") Long laptopId, @ModelAttribute("comment")Comment comment, Model model) {
        commentService.saveComment(comment,laptopId);
        return "redirect:/laptop/" + laptopId;
    }
}
