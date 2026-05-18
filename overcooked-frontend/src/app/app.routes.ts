import { Routes } from '@angular/router';
import { RecipeList} from './pages/recipe-list/recipe-list';
import { RecipeFormComponent } from './pages/recipe-form/recipe-form.component';

export const routes: Routes = [
  { path: '', component: RecipeList },
  { path: 'nova', component: RecipeFormComponent },
  { path: '**', redirectTo: '' }
];
