import { Component, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import {RecipeListComponent} from './pages/recipe-list/recipe-list';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, RecipeListComponent],
  templateUrl: './app.html',
  styleUrl: './app.css'
})
export class App {
  protected readonly title = signal('overcooked-frontend');
}
