cd ./backend
docker image build -t danverh/swarm-backend:latest --rm .
docker image push danverh/swarm-backend:latest

cd ../frontend
docker image build -t danverh/swarm-frontend:latest --rm .
docker image push danverh/swarm-frontend:latest 
cd ..

docker stack deploy --compose-file app.yml app
