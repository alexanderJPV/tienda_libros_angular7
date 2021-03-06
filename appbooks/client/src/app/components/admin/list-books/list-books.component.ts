import { Component, OnInit } from '@angular/core';
import { DataApiService } from 'src/app/services/data-api.service';
import { BookInterface } from './../../../models/book-interface';
import { NgForm } from '@angular/forms';
@Component({
  selector: 'app-list-books',
  templateUrl: './list-books.component.html',
  styleUrls: ['./list-books.component.css']
})
export class ListBooksComponent implements OnInit {

  constructor(private dataApiService: DataApiService) { }
  pageActual: number = 1;
  public myCounter: number = 0;
  private books: BookInterface;
  ngOnInit() {
    this.getListBooks();
  }
  getListBooks(): void{
    this.dataApiService.getAllbooks().subscribe( books => (this.books = books));
  }
  onDeleteBook(id: string): void {
    if (confirm('Are you sure to delete?')) {
      this.dataApiService.deleteBook(id).subscribe();
    }
  }


  onPreUpdateBook(book: BookInterface): void {
    this.dataApiService.selectedBook = Object.assign({}, book);
  }

  resetForm(bookForm?: NgForm): void {
    this.dataApiService.selectedBook = {
      id: null,
      titulo: '',
      idioma: '',
      descripcion: '',
      portada: '',
      precio: '',
      link_amazon: '',
      autor: '',
      oferta: ''
    };
  }
}
