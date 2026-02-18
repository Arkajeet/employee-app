using EmployeeService from './empappsrv';

annotate EmployeeService.Employee with 

    @UI.HeaderInfo: {
        TypeName: 'Employee',
        TypeNamePlural: 'Employees',
        Title: { Value: name }
    }

    @UI.LineItem: [
        { Value: name },
        { Value: role },
        { Value: salary },
        { Value: createdAt }
    
    ]

    @UI.CreateHidden: false

    @UI.SelectionFields: [
        name
    ]

    @UI.FieldGroup #General: {
        Data: [
        { Value: name },
        { Value: role },
        { Value: salary },
        { Value: createdAt }
        ]
    }

    @UI.Facets: [
        {
            Label: 'General Information',
            Target: '@UI.FieldGroup#General'
        }
    ]
