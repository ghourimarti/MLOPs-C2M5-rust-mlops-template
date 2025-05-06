docker build -t fruits-rust-app .

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 271271282883.dkr.ecr.us-east-1.amazonaws.com

aws ecr create-repository --repository-name fruits-rust-app --region us-east-1

docker tag fruits-rust-app:latest 271271282883.dkr.ecr.us-east-1.amazonaws.com/fruits-rust-app:v1

docker push 271271282883.dkr.ecr.us-east-1.amazonaws.com/fruits-rust-app:v1


