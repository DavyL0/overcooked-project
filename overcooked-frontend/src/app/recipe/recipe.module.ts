import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

 // @ts-ignore
@NgModule({
  declarations: [],
  imports: [CommonModule],
})
export interface Recipe {
  id?: number;
  nome: string;
  categoria: 'DOCE' | 'SALGADO' | 'BEBIDA' | 'SOBREMESA';
  tempoPreparo: number;
  porcoes: number;
  ingredientes: string[];
  modoPreparo: string;
  dataCadastro?: string;
}
