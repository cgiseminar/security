# port forwarding

일반 개발자가 :8080 포트로 웹 개발을 진행하고 :80 포트로 실행하도록 서버를 설정할 수 있다.
:80 포트는 관리자만 권한을 가질 수 있지만, 개발자에게 관리자 권한을 주는 것이 좋지 않기 때문이다.

:8080 포트로 서비스를 실행하더라도 :80 포트로 서비스가 되도록 하는 방법.
```
# firewall-cmd --parmanent --add-forward-port=port=80:proto=tcp:topport=8080
# firewall-cmd --reload
# firewall-cmd --list-all
```

설정을 제거하는 방법
```
# firewall-cmd --parmanent --remove-forward-port=port=80:proto=tcp:topport=8080
# firewall-cmd --reload
# firewall-cmd --list-all
```