application frontend is available at [this-link](http://udagrambucket5897.s3-website-us-east-1.amazonaws.com/)

# Infrastructure description
In this project a developed full stack application is deployed to a cloud service provider so that it is available to customers. This application contains the main components of a 3-tier full stack application (UI, API, and Database).

## the following technologies of amazon web services(aws) are used:

![udagram](udagram-api-hosting.png)


### UI: the application's UI is hosted on an s3 bucket.
![frontend-bucket](AWS-s3-frontend-bucket.png)

### API: the application's API server is hosted on elasticbeanstalk.
![backend](AWS-elasticbeanstalk.png)

### Database: the application's database is hosted on an rds instance.
![database](AWS-rds-postgress-database.png)

## git:
git is used for source control and github is used for the project's repository.
## circleci:
circleci is used for creating pipelines to perform CI/CD.

# App dependencies

# Pipeline process
 "start": "node ./www/server.js",
    "tsc": "npx tsc",
    "dev": "npx ts-node-dev --respawn --transpile-only ./src/server.ts",
    "prod": "npx tsc && node ./www/server.js",
    "clean": "rm -rf www/ || true",
    "setenv": "eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME  POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_HOST=$POSTGRES_HOST POSTGRES_DB=$POSTGRES_DB AWS_BUCKET=$AWS_BUCKET AWS_REGION=$AWS_REGION AWS_PROFILE=$AWS_PROFILE JWT_SECRET=$JWT_SECRET URL=$URL",
    "deploy": "npm run build && printf 1 | eb init --region us-east-1 udagram && eb use udagram-env && npm run setenv && eb deploy",
    "build": "npm install . && npm run clean && tsc && cp -rf src/config www/config && cp -R .elasticbeanstalk www/.elasticbeanstalk && cp .npmrc www/.npmrc && cp package.json www/package.json && cd www && zip -r Archive.zip . && cd ..",

 
export POSTGRES_USERNAME=postgres
export POSTGRES_PASSWORD=postgres
export POSTGRES_HOST=database-1.c4bfhoqxvgqd.us-east-1.rds.amazonaws.com
export POSTGRES_DB=postgres
export AWS_BUCKET=udagrambucket5897
export AWS_REGION=us-east-1
export AWS_PROFILE=default
export JWT_SECRET=mysecretstring
export URL=http://udagrambucket5897.s3-website-us-east-1.amazonaws.com/
 