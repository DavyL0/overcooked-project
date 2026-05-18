package com.davy.overcookedbackend.controller;

import com.davy.overcookedbackend.entity.Recipe;
import com.davy.overcookedbackend.repository.RecipeRepository;
import com.davy.overcookedbackend.service.RecipeService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/receitas")
public class RecipeController {

    private final RecipeService recipeService;

    public RecipeController(RecipeService recipeService) {
        this.recipeService = recipeService;
    }

    @GetMapping
    public ResponseEntity<List<Recipe>> listarTodas() {
        List<Recipe> receitas = recipeService.listarTodas();
        return ResponseEntity.ok(receitas);
    }
}
