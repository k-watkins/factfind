import { ComponentFixture, TestBed } from '@angular/core/testing';

import { IncomeAssetsComponent } from './income-assets.component';

describe('IncomeAssetsComponent', () => {
  let component: IncomeAssetsComponent;
  let fixture: ComponentFixture<IncomeAssetsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ IncomeAssetsComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(IncomeAssetsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
