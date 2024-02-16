#!/bin/bash

echo "******************************************"
echo " Stopping card-nginx container:"
docker stop card-nginx
sleep 5
echo -e  "\n"


echo "******************************************"
echo " Deleting card-nginx container:"
docker rm card-nginx
sleep 5
echo -e  "\n"


echo "******************************************"
echo "Deleting card-image tagged card:"
docker rmi card-image:card
sleep 5
echo -e  "\n"


echo "******************************************"
echo "Deleting card-image tagged to your docker hub local repository:"
docker rmi victortreten/repo_test:card
sleep 5
echo -e  "\n"


echo "******************************************"
echo " Confirm container has been stopped:"
docker ps
sleep 5
echo -e  "\n"

echo "******************************************"
echo " Confirm all card images removed:"
docker images
sleep 5
echo -e  "\n"

echo "END"
