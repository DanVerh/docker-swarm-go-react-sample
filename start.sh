cd ./backend
docker image build -t danverh/sample-go:latest --rm .
docker image push

cd ../frontend
docker image build -t danverh/sample-react:latest --rm .
docker image push
cd ..

docker stack deploy --compose-file docker-compose.yml app
docker stack deploy --compose-file docker-compose2.yml app