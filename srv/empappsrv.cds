using { employeeapp as db } from '../db/schema';

service EmployeeService {

    @restrict: [
        { grant: 'READ', to: 'Viewer' },
        { grant: ['READ','CREATE', 'UPDATE', 'DELETE'], to: 'Admin' }
    ]
@Capabilities.InsertRestrictions.Insertable: true
    entity Employee as projection on db.Employees;
}
