//
//  ViewController.m
//  String Numeros Arrays Colecciones
//
//  Created by Profesor on 21/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //Foundation

    //String
    NSString * name = @"Giovanny Suarez";
    
    NSString * direccion = [[NSString alloc] initWithFormat:@"Barrio Poblado"];
    
    //Int
    
    NSInteger * numero = 3;
    
    int edad = 20;
    
    NSMutableString * cadena = [NSMutableString stringWithFormat:@"Giovanny vive en "];
    [cadena appendString:@"Poblado"];

    
    
    //Arrays
    NSArray * ciudades = @[@"Bogota", @"Medellin", @"Cali"];
    NSArray * paises = [[NSArray alloc] initWithObjects:@"Colombia", @"Peru", @"Venezuela", nil];
    
    NSString * string = [ciudades objectAtIndex:1];
    NSInteger posicion = [paises indexOfObject:@"Colombia"];
    
    

    
    //Array Mutable
    
    NSMutableArray * tareas = [[NSMutableArray alloc] initWithArray:@[@"Programar", @"Reportar", @"Probar"]];
    
    [tareas addObject:@"Descansar"];
    
    [tareas removeObject:@"Reportar"];
    
    [tareas removeObjectAtIndex:0];
    
    [tareas removeAllObjects];
    [tareas removeLastObject];
    
    
    
    //Diccionario
    
    NSDictionary * usuario = @{ @"nombre" : @"Pepito",
                                @"cedula": @"1098746365",
                                @"ciudad": @"medellin",
                                @"sexo": @"m"
                                };
    
    NSDictionary * carro = [[NSDictionary alloc] initWithObjectsAndKeys:@"mazda", @"marca", @"2014", @"modelo", @"btg876", @"placa", nil];
    
   
    NSString * cedula = [usuario objectForKey:@"cedula"];
    
    //Diccionario Mutable
    NSMutableDictionary * carroMutable = [[NSMutableDictionary alloc] initWithDictionary:carro];
    
    [carroMutable setValue:@"chevrolet" forKey:@"marca"];
    [carroMutable removeObjectForKey:@"placa"];
    
    //[carroMutable removeAllObjects];
    
    //NSNumber
    
    NSNumber * velocidad = [NSNumber numberWithFloat:10.5746537829f];
    NSNumber * validar = [NSNumber numberWithBool:YES];

    //El carro va a 10,5 km
    
    NSString * mensaje = [NSString stringWithFormat:@"El carro va a %.02f", [velocidad floatValue]];
    
    NSLog(@"%@", mensaje);
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
