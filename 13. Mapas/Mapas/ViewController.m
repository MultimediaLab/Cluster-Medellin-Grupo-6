//
//  ViewController.m
//  Mapas
//
//  Created by Profesor on 13/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"
#import "MiPunto.h"
#import "CityIconView.h"
#import "PopupCityView.h"

@interface ViewController ()
{
    PopupCityView * pop;

}

@property MKPolyline * line;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _worldView.delegate = self;
    
    //MEDELLIN
    MiPunto * medellin = [[MiPunto alloc] init];
  //  [_worldView addAnnotation:medellin];
    
    //BOGOTA
    CLLocationCoordinate2D bgt;
    bgt.latitude = 4.60971;
    bgt.longitude = -74.08175;
    
    MiPunto * bgtPoint = [[MiPunto alloc] initWithCoordinate:bgt title:@"Bogotá"];
    
    //MANIZALES
    MiPunto * mzePoint = [[MiPunto alloc] initWithCoordinate:CLLocationCoordinate2DMake(5.07, -75.52056) title:@"Manizales"];
    
    [_worldView addAnnotations:[NSArray arrayWithObjects:medellin, bgtPoint, mzePoint, nil]];
    
    MKCoordinateRegion region;
    region.center.latitude = medellin.coordinate.latitude;
    region.center.longitude = medellin.coordinate.longitude;
    
    region.span.latitudeDelta = 5;
    region.span.longitudeDelta = 5;
    
    [_worldView setRegion:region animated:YES];
    
    //CALCULAR DISTANCIA ENTRE MEDELLIN Y BOGOTA
    CLLocation * punto1 = [[CLLocation alloc] initWithLatitude:medellin.coordinate.latitude longitude:medellin.coordinate.longitude];
    CLLocation * punto2 = [[CLLocation alloc] initWithLatitude:bgtPoint.coordinate.latitude longitude:bgtPoint.coordinate.longitude];
    
    CLLocationDistance distance = [punto1 distanceFromLocation:punto2];
    
    UIAlertView * alerta = [[UIAlertView alloc] initWithTitle:@"Distacia"
                                                      message:[NSString stringWithFormat:@"La distancia de medellin y bogota es de %0.f KM", distance/1000]
                                                     delegate:nil
                                            cancelButtonTitle:@"Aceptar"
                                            otherButtonTitles: nil];
    [alerta show];
    
    
    
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    
    //IOS 8
    [locationManager requestAlwaysAuthorization];
    [_worldView setShowsUserLocation:YES];
    
    
    //@property MKPolyline * line;

    //LINEA ENTRE MEDELLIN Y BOGOTA
    MKMapPoint * pointArray = malloc(sizeof(CLLocationCoordinate2D)*2);
    pointArray[0] = MKMapPointForCoordinate(bgt);
    pointArray[1] = MKMapPointForCoordinate(medellin.coordinate);
    _line = [MKPolyline polylineWithPoints:pointArray count:2];
    [_worldView addOverlay:_line];
    
}

-(MKOverlayRenderer *)mapView:(MKMapView *)mapView rendererForOverlay:(id<MKOverlay>)overlay{
    MKPolyline * ruta = overlay;
    MKPolylineRenderer * rutaRender = [[MKPolylineRenderer alloc] initWithPolyline:ruta];
    rutaRender.strokeColor = [UIColor redColor];
    rutaRender.lineWidth = 1;
    rutaRender.lineDashPattern = [NSArray arrayWithObjects:[NSNumber numberWithInt:10],[NSNumber numberWithInt:20], nil];
    return rutaRender;
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
    if (![annotation isKindOfClass:[MKUserLocation class]]) {
        CityIconView * city = [[[NSBundle mainBundle] loadNibNamed:@"CityIcon" owner:self options:nil] objectAtIndex:0];
        return city;
    }
    return nil;
}

-(void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view{
    if (![view.annotation isKindOfClass:[MKUserLocation class]]) {
        pop = [[[NSBundle mainBundle] loadNibNamed:@"PoupCity" owner:self options:nil] objectAtIndex:0];
        pop.PopupText.text = view.annotation.title;
        
        CGRect popFrame = pop.frame;
        popFrame.origin = CGPointMake(30, 30);
        pop.frame = popFrame;
        
        [self.view addSubview:pop];
    }
}
-(void)mapView:(MKMapView *)mapView didDeselectAnnotationView:(MKAnnotationView *)view{
    if (![view.annotation isKindOfClass:[MKUserLocation class]]) {
        [pop removeFromSuperview];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeMap:(id)sender {
    NSInteger control = [((UISegmentedControl*)sender) selectedSegmentIndex];
    switch (control) {
        case 0:
            [_worldView setMapType:MKMapTypeStandard];
            break;
        case 1:
            [_worldView setMapType:MKMapTypeSatellite];
            break;
        case 2:
            [_worldView setMapType:MKMapTypeHybrid];
            break;
    }
    
    
}

- (IBAction)programarNotificacion:(id)sender {
    UILocalNotification * viaje = [[UILocalNotification alloc] init];
    
   /* NSString * fechaString = @"01-01-2015";
    NSDateFormatter * dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate * fechaNuevoAno = [[NSDate alloc] init];
    fechaNuevoAno = [dateFormat dateFromString:fechaString];
    viaje.fireDate = fechaNuevoAno;*/
    
    viaje.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
    viaje.alertBody= @"Recuerda el Viaje a Bogota!!!";
    
    viaje.timeZone = [NSTimeZone defaultTimeZone];
    
    viaje.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber] + 1;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:viaje];
    
}
@end
