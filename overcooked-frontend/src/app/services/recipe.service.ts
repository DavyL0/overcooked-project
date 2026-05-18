import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Recipe } from '../recipe/recipe.module';

@Injectable({
  providedIn: 'root'
})
export class RecipeService {
  private apiUrl = 'http://localhost:8080/api/receitas';

  constructor(private http: HttpClient) {}
  listarTodas(): Observable<Recipe[]> {
    return this.http.get<Recipe[]>(this.apiUrl);
  }
}
