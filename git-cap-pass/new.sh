docker stop cap-pass
docker rm cap-pass
docker rmi halfray/cap-pass
docker build -t halfray/cap-pass .
docker run -d --name  cap-pass -p 8081:80  --env APP_GIT_URL=https://github.com/halfray/wechat-gateway.git --env APP_BRANCH=master halfray/cap-pass  
sleep 5
docker logs cap-pass


