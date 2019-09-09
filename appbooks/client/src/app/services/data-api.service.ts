import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders} from '@angular/common/http';
import { Observable } from 'rxjs/internal/Observable';
@Injectable({
  providedIn: 'root'
})
export class DataApiService {
  books: Observable<any>;
  book: Observable<any>;
  constructor(private http:HttpClient) { }

  getAllbooks(){
    const url_api='http://localhost:3000/api/books';
    return this.http.get(url_api);
  }
  getBookById(id: string){
    const url_api = 'http://localhost:3000/api/books/'+id;
    return (this.book = this.http.get(url_api));
  }
  getOffers(){
    const url_api=`http://localhost:3000/api/books?filter[where][oferta]==1`;
    return (this.books = this.http.get(url_api));
  }

}
