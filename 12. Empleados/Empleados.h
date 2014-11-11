#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface Empleados : NSObject
{
    sqlite3 * employed;
}
@property NSString * empId;
@property NSString * empName;
@property NSString * empCedula;
@property NSString * empJob;
@property NSString * empPhone;
@property NSString * empAdress;

@property NSString * status;

-(void)createDatabaseInDocuments;
-(void)searchPathOfDatabase;

//Adicionar
-(void)insertEmployedInDatase;

//Buscar
-(void)searchEmployedInDatabase;

//Eliminar
-(void)deleteEmployedInDatabase;

//Actualizar
-(void)updateEmployedInDatabase;

@end
