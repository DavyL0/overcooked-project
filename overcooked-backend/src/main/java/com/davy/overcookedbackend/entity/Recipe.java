package com.davy.overcookedbackend.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "RECIPES")
public class Recipe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "O nome da receita é obrigatório.")
    @Column(unique = true, nullable = false)
    private String nome;

    @NotNull(message = "A categoria é obrigatória.")
    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Categoria category; // Assumindo o nome do seu Enum (Category ou Categoria)

    @NotNull(message = "O tempo de preparo é obrigatório.")
    @Min(value = 1, message = "O tempo de preparo deve ser de pelo menos 1 minuto.") // RN05
    @Column(name = "tempo_preparo", nullable = false)
    private Integer tempoPreparo;

    @NotNull(message = "A quantidade de porções é obrigatória.")
    @Min(value = 1, message = "A receita deve render pelo menos 1 porção.") // RN06
    @Column(nullable = false)
    private Integer porcoes;

    @NotBlank(message = "O modo de preparo é obrigatório.")
    @Column(name = "modo_preparo", columnDefinition = "TEXT", nullable = false)
    private String modoPreparo;

    @NotEmpty(message = "A receita deve conter pelo menos um ingrediente.")
    @ElementCollection(fetch = FetchType.EAGER)
    @CollectionTable(name = "RECIPE_INGREDIENTS", joinColumns = @JoinColumn(name = "RECIPE_ID"))
    @Column(name = "INGREDIENTE")
    private List<String> ingredientes;

    @Column(name = "data_cadastro", nullable = false, updatable = false)
    private LocalDateTime dataCadastro;

    @PrePersist
    protected void onCreate() {
        this.dataCadastro = LocalDateTime.now(); // RN02: Preenchimento automático
    }

    // Getters, Setters e Construtores
}