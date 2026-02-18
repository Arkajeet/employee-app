using { employeeapp as db } from '../db/schema';

service EmployeeService {

    @restrict: [
        { grant: 'READ', to: 'Viewer' },
        { grant: ['READ','WRITE'], to: 'Admin' }
    ]

    entity Employee as projection on db.Employees;
}
