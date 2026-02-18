namespace employeeapp;

entity Employees {
    key ID        : UUID;
        name      : String(100);
        role      : String(50);
        salary    : Decimal(10,2);
        createdAt : Timestamp;
}
