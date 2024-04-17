## Prerequisites
- Docker
- Taskfile
- Node.js

## Installation
Run the following commands in the root folder and backend folder to install dependencies:

```bash
npm install 
```

## Database Setup
Modify the parameters in the Makefile and run the following commands:

```bash
task pull
task runDb
task sqlShell
task createDb
task sqlCopy
task dockerBash
task runSqlScript
```

## How to Run
To run the entire application:
```bash
export NODE_OPTIONS=--openssl-legacy-provider
npm run dev 
```

To run the frontend:
```bash
npm run client
```

To run the server:
```bash
npm run server 
```