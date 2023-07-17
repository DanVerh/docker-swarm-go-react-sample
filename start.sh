cd ./backend
docker image build -t backend:latest --rm .

cd ../frontend
docker image build -t frontend:latest --rm .
cd ..

docker stack deploy --compose-file app.yml app