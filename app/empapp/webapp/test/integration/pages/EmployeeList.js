sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'empapp',
            componentId: 'EmployeeList',
            contextPath: '/Employee'
        },
        CustomPageDefinitions
    );
});