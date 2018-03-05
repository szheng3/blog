run:
	docker rm -f demo-app
	docker rmi shuai/demo
	git pull
	mvn package -Dmaven.test.skip=true docker:build
	docker run -d --restart=unless-stopped -p 80:8080 --link demo-mysql:mysql  --name demo-app -v /data/:/data/ shuai/demo