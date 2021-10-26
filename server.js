const inquirer = require('inquirer');
const mysql = require('mysql2');

const db = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: 'root',
        database: 'employeetracker_db',
    }
)

const menu = [
    {
        type: 'list',
        message: 'What action would you like to complete?',
        name: 'action',
        choices: [
            'Add department',
            'Add role',
            'Add employee',
            'View department',
            'View role',
            'View employees',
            'Update employee',
            'Finish'
        ]
    }
];

const addDept = [
    {
        type: 'input',
        message: 'Enter dept name you would like to add.',
        name: 'department'
    }
];

const addRoles = [
    {
        type: 'input',
        message: 'Please enter dept id of the new role.',
        name: 'dept id'
    },
    {
        type: 'input',
        message: 'Please enter the title of the new role.',
        name: 'title'
    },
    {
        type: 'input',
        message: 'Please enter the salary for the new role.',
        name: 'salary'
    }
];

const addEmployee = [
    {
        type: 'input',
        message: 'What is the role id for the new employee?',
        name: 'role'
    },
    {
        type: 'input',
        message: 'Please enter new employees first name',
        name: 'first_name'
    },
    {
        type: 'input',
        message: 'Please enter new employees last name',
        name: 'last_name'
    },
    {
        type: 'input',
        message: "Please provide managers employee id for the new employee. (Press enter if new employee is manager)",
        name: 'manager'
    }
];

