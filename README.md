<img src="./src/static/favicon.png" width=20%/>

# My HomePage

Terminal based GUI for my personal homepage. Check my [homepage](www.savazeb.com)!

## Overview
<div>
    <img src="./__assets/Desktop.png" width="40%"/>
    <img src="./__assets/Smartphone.png" width="12%"/>
</div>

Builed with:
- Next.js
- Docker

## Requirements
1. Docker or npm  
   Needed to run the container
2. Bash shell (Optional)  
   Run the script files inside [./scripts](./scripts/)

## Tree
Source codes in this project are stored in [./src](./src/)
```bash
└── src
    └── app.js
```

## Basic Usage

For development you can use the provided shell script by running:
```bash
cd ./scripts && ./dev
```
Or, use npm manually by go to [./src](./src/), then
```bash
# install dependencies
npm install .

# start the developing server 
npm run dev
```

## Deployment
Not Yet Supported

[MIT](./LICENSE)