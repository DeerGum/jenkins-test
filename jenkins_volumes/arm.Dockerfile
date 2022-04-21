#공식 젠킨스 이미지를 베이스로 한다.
FROM mlucken/jenkins-arm

#root 계정으로 변경
USER root

#젠킨스 컨테이너에서 docker 명령어 사용을 위해 docker 설치
RUN curl -fsSL https://get.docker.com -o get-docker.sh

RUN sh get-docker.sh

RUN usermod -aG docker jenkins

USER jenkins