#공식 젠킨스 이미지를 베이스로 한다.
FROM mlucken/jenkins-arm

#root 계정으로 변경
USER root

#젠킨스 컨테이너에서 docker 명령어 사용을 위해 docker 설치
COPY docker_install.sh /docker_install.sh

RUN chmod +x /docker_install.sh

RUN /docker_install.sh

RUN usermod -aG docker jenkins

USER jenkins