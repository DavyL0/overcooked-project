package com.davy.overcookedbackend.service;
import com.davy.overcookedbackend.entity.Recipe;
import com.davy.overcookedbackend.repository.RecipeRepository;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;
import java.util.List;

@Service
public class RecipeService {

    private final RecipeRepository recipeRepository;

    public RecipeService(RecipeRepository recipeRepository) {
        this.recipeRepository = recipeRepository;
    }

    public List<Recipe> listarTodas() {
        List<Recipe> receitas = recipeRepository.findAllByOrderByDataCadastroDesc();

        if (receitas.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Nenhuma receita cadastrada.");
        }

        return receitas;
    }
}