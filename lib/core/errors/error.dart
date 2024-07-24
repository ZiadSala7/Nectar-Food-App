// {
//     "success": {
//         "statusCode": 200,
//         "isSuccess": true,
//         "message": "Success",
//         "data": {
//             "isAuthenticated": true,
//             "id": "6c0646b9-ede9-4682-8a14-69e39eb2f5fd",
//             "email": "ziad13@gmail.com",
//             "username": "al1i2",
//             "phoneNumber": "01030152809",
//             "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJhbDFpMiIsImp0aSI6IjZmYTY4ZDUzLWI3MjMtNDhjNi1iNzVhLTg4MzBlMzI4MWEyNCIsImVtYWlsIjoiemlhZDEzQGdtYWlsLmNvbSIsInVpZCI6IjZjMDY0NmI5LWVkZTktNDY4Mi04YTE0LTY5ZTM5ZWIyZjVmZCIsImV4cCI6MTcyNDQyMjIzMiwiaXNzIjoiU2VjdXJlQXBpIiwiYXVkIjoiU2VjdXJlQXBpVXNlciJ9.FE84AfpRxotkKUFEkDtZnhIyxGNnwP8QGjvz9407A-g"
//         }
//     },
//     "username": {
//         "statusCode": 400,
//         "isSuccess": false,
//         "message": "Faild",
//         "data": [
//             "Username 'ali' is already taken.",
//             "Username must contain only letters and digits"
//         ]
//     },
//     "email": {
//         "statusCode": 400,
//         "isSuccess": false,
//         "message": "Email is Exist",
//         "data": null
//     },
//     "notMatchingPassword": {
//         "type": "https://tools.ietf.org/html/rfc7231#section-6.5.1",
//         "title": "One or more validation errors occurred.",
//         "status": 400,
//         "traceId": "00-4e770437bbad321903eb01320c5556a8-3118d040a6c878e1-00",
//         "errors": {
//             "ConfirmPassword": [
//                 "'ConfirmPassword' and 'Password' do not match."
//             ]
//         }
//     },
//     "weekPassword": {
//         "type": "https://tools.ietf.org/html/rfc7231#section-6.5.1",
//         "title": "One or more validation errors occurred.",
//         "status": 400,
//         "traceId": "00-bde6fb92b06d1f4dcbc75b366602a1e4-af98114c34c3d3ac-00",
//         "errors": {
//             "Password": [
//                 "Password must contain at least one lowercase letter, one uppercase letter, one digit, and one special character"
//             ]
//         }
//     }
// }