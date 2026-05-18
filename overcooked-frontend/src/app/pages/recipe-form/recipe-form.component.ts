import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormBuilder, FormGroup, FormArray, Validators, ReactiveFormsModule } from '@angular/forms';
import { Router, RouterModule } from '@angular/router';
import { RecipeService } from '../../services/recipe.service';

@Component({
  selector: 'app-recipe-form',
  standalone: true,
  imports: [CommonModule, ReactiveFormsModule, RouterModule],
  templateUrl: './recipe-form.component.html',
  styleUrls: ['./recipe-form.component.css']
})
export class RecipeFormComponent implements OnInit {
  recipeForm!: FormGroup;
  mensagemSucesso: string = '';
  erroServidor: string = '';

  categorias = ['BEBIDA', 'DOCE', 'SALGADO', 'SOBREMESA'];

  constructor(
    private fb: FormBuilder,
    private recipeService: RecipeService,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.recipeForm = this.fb.group({
      nome: ['', [Validators.required]],
      category: ['', [Validators.required]],
      tempoPreparo: ['', [Validators.required, Validators.min(1)]], // RN05
      porcoes: ['', [Validators.required, Validators.min(1)]],       // RN06
      modoPreparo: ['', [Validators.required]],
      ingredientes: this.fb.array([], Validators.required)
    });

    // Inicia com pelo menos um campo de ingrediente em branco
    this.adicionarIngrediente();
  }

  get ingredientes(): FormArray {
    return this.recipeForm.get('ingredientes') as FormArray;
  }

  adicionarIngrediente(): void {
    this.ingredientes.push(this.fb.control('', Validators.required));
  }

  removerIngrediente(index: number): void {
    if (this.ingredientes.length > 1) {
      this.ingredientes.removeAt(index);
    }
  }

  submeter(): void {
    if (this.recipeForm.invalid) {
      return;
    }

    this.recipeService.cadastrarReceita(this.recipeForm.value).subscribe({
      next: () => {
        this.mensagemSucesso = 'Receita cadastrada com sucesso!'; // CA03.6
        this.erroServidor = '';
        setTimeout(() => {
          this.router.navigate(['/']); // CA03.5 - Redireciona para listagem
        }, 2000);
      },
      error: (err) => {
        if (err.status === 409) {
          this.recipeForm.get('nome')?.setErrors({ nomeDuplicado: true });
        } else {
          this.erroServidor = 'Ocorreu um erro ao salvar a receita. Tente novamente.';
        }
      }
    });
  }
}
