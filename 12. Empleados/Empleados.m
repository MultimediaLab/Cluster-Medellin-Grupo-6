#import "Empleados.h"
@interface Empleados ()
@property NSString * databasePath;
@end
@implementation Empleados
-(void)searchPathOfDatabase{
    NSString * rutaDocuments = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    _databasePath = [[NSString alloc] initWithString:[rutaDocuments stringByAppendingPathComponent:@"employed.db"]];
    
    NSLog(@"%@", rutaDocuments);
}
-(void)createDatabaseInDocuments{
    [self searchPathOfDatabase];
    NSFileManager * file = [[NSFileManager alloc] init];
    if (![file fileExistsAtPath:_databasePath]) {
        NSLog(@"El archivo no existe");
        const char * dbpath = [_databasePath UTF8String];
        if (sqlite3_open(dbpath, &employed)==SQLITE_OK) {
            NSLog(@"La base de datos se creo existosamente");
            char * error;
            const char * sql = "CREATE TABLE IF NOT EXISTS Employed (ID INTEGER PRIMARY KEY AUTOINCREMENT, EMP_NAME TEXT, EMP_CEDULA TEXT, EMP_JOB TEXT, EMP_PHONE TEXT, EMP_ADRESS TEXT)";
            if (sqlite3_exec(employed, sql, NULL, NULL, &error)==SQLITE_OK) {
                NSLog(@"Tabla creada exitosamente");
            }else{
                NSLog(@"Error en crear tabla: %s", error);
            }
            sqlite3_close(employed);
        }
    }
    else{
        NSLog(@"El archivo ya existe");
    }
}
-(void)insertEmployedInDatase{
    [self searchPathOfDatabase];
    sqlite3_stmt * query;
    const char * db = [_databasePath UTF8String];
    if (sqlite3_open(db, &employed)== SQLITE_OK) {
        NSString * insert = [NSString stringWithFormat:@"INSERT INTO Employed (EMP_NAME , EMP_CEDULA , EMP_JOB , EMP_PHONE , EMP_ADRESS ) VALUES (\"%@\", \"%@\", \"%@\",  \"%@\",  \"%@\" )", _empName, _empCedula, _empJob, _empPhone, _empAdress];
        const char * insertsql = [insert UTF8String];
        sqlite3_prepare_v2(employed, insertsql, -1, &query, NULL);
        if (sqlite3_step(query) == SQLITE_DONE) {
            _status = @"Empleado Adicionado";
        }
        else{
            _status= @"Error al adicionar empleado";
        }
        sqlite3_finalize(query);
        sqlite3_close(employed);
    }else{
        NSLog(@"No se pudo acceder a la base de datos");
    }
}
-(void)searchEmployedInDatabase{
    [self searchPathOfDatabase];
    const char * db = [_databasePath UTF8String];
    sqlite3_stmt * query;
    if (sqlite3_open(db, &employed)==SQLITE_OK) {
        const char * selectsql = [[NSString stringWithFormat:@"SELECT * FROM Employed WHERE EMP_CEDULA = \"%@\"", _empCedula] UTF8String];
        if (sqlite3_prepare_v2(employed, selectsql, -1, &query, NULL)==SQLITE_OK) {
            if (sqlite3_step(query)==SQLITE_ROW) {
                _status = @"Empleado Encontrado";
                
                _empName = [NSString stringWithFormat:@"%s", sqlite3_column_text(query, 1)];
                _empJob = [NSString stringWithFormat:@"%s", sqlite3_column_text(query, 3)];
                _empPhone = [NSString stringWithFormat:@"%s", sqlite3_column_text(query, 4)];
                _empAdress = [NSString stringWithFormat:@"%s", sqlite3_column_text(query, 5)];
                _empId = [NSString stringWithFormat:@"%s", sqlite3_column_text(query, 0)];
            }else{
                _status = @"Empleado no encontrado";
                _empName= _empPhone=_empAdress=_empJob = @"------------------------";
                _empId = nil;
            }
        }else{
            _status = @"Error en el SQL";
        }
        sqlite3_finalize(query);
        sqlite3_close(employed);
    }
}
-(void)deleteEmployedInDatabase{
    [self searchPathOfDatabase];
    const char * db = [_databasePath UTF8String];
    sqlite3_stmt * query;
    if (sqlite3_open(db, &employed) == SQLITE_OK) {
        const char * deleteSql = [[NSString stringWithFormat:@"DELETE FROM Employed WHERE ID = \"%@\"", _empId] UTF8String];
        if (sqlite3_prepare_v2(employed, deleteSql, -1, &query, NULL) ==SQLITE_OK) {
            if (sqlite3_step(query)==SQLITE_DONE) {
                _status = @"Empleado Eliminado";
            }else{
                _status = @"Error al eliminar empleado";
            }
        }else{
            NSLog(@"Error en SQL");
        }
        sqlite3_close(employed);
    }

}

@end
