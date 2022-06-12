# This file is used for convenience of local development.
# DO NOT STORE YOUR CREDENTIALS INTO GIT
export POSTGRES_USERNAME=postgres
export POSTGRES_PASSWORD=postgres
export POSTGRES_HOST=database-1.c4bfhoqxvgqd.us-east-1.rds.amazonaws.com
export POSTGRES_DB=postgres
export AWS_BUCKET=arn:aws:s3:::udagrambucket5897
export AWS_REGION=us-east-1
export AWS_PROFILE=default
export JWT_SECRET=mysecretstring
export URL=http://localhost:8100

eb setenv POSTGRES_USERNAME=postgres  POSTGRES_PASSWORD=postgres POSTGRES_HOST=database-1.c4bfhoqxvgqd.us-east-1.rds.amazonaws.com POSTGRES_DB=postgres AWS_BUCKET=arn:aws:s3:::udagrambucket5897 AWS_REGION=us-east-1 AWS_PROFILE=default JWT_SECRET=mysecretstring URL=http://localhost:8100