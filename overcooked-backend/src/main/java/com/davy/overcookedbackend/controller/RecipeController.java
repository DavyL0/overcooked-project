package com.davy.overcookedbackend.controller;

import com.davy.overcookedbackend.entity.Recipe;
import com.davy.overcookedbackend.repository.RecipeRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/receitas")
public class RecipeController {

    private final RecipeRepository recipeRepository;

    public RecipeController(RecipeRepository recipeRepository) {
        this.recipeRepository = recipeRepository;
    }

    @GetMapping
    public List<Recipe> listarTodas() {
        return recipeRepository.findAllByOrderByDataCadastroDesc();
    }
}
