import { Component, OnInit } from '@angular/core';
import { Title } from '@angular/platform-browser';
@Component({
  selector: 'app-howdoi',
  templateUrl: './howdoi.component.html',
  styleUrls: ['./howdoi.component.scss']
})
export class HowdoiComponent implements OnInit {
  public hasuser = false;
  public avatarImg: string = '';
  public show: boolean = true;
  constructor(private titleService: Title) { 
    this.titleService.setTitle("Lighthouse | How Do I ?");
    this.iconhide();
  }

  ngOnInit() {
  }
  iconhide() {
    const user: any = JSON.parse(localStorage.getItem('currentUser'));
    const id = user.roleid
    console.log('curent user', id);
    // debugger;
    if (id == 3) {
      this.show = false;
      this.hasuser = true;
    }
  }
}
