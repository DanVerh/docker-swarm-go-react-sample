cd ./backend
docker image build -t danverh/sample-go:latest --rm .
docker image push danverh/sample-go:latest

cd ../frontend
docker image build -t danverh/sample-react:latest --rm .
docker image push danverh/sample-react:latest
cd ..

docker stack deploy --compose-file docker-compose.yml app