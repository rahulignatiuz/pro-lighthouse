import { Component, OnInit } from '@angular/core';
import { Title } from '@angular/platform-browser';
@Component({
  selector: 'app-howdoi',
  templateUrl: './howdoi.component.html',
  styleUrls: ['./howdoi.component.scss']
})
export class HowdoiComponent implements OnInit {

  constructor(private titleService: Title) { 
    this.titleService.setTitle("Lighthouse | How Do I ?");
  }

  ngOnInit() {
  }

}
