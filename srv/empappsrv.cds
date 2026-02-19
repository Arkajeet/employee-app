using { employeeapp as db } from '../db/schema';

service EmployeeService {

    @restrict: [
        { grant: 'READ', to: 'Viewer' },
        { grant: ['READ','CREATE', 'UPDATE', 'DELETE'], to: 'Admin' }
    ]


    @odata.draft.enabled : true
    entity Employee as projection on db.Employees;
    annotate EmployeeService.Employee with @odata.draft.enabled;
}
