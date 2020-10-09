# Infrastructure as a Code

## 초기화
* terraform 상태를 저장할 S3 버킷과 DynamoDB 테이블을 생성해야 한다.
* state를 저장할 백엔드가 초기화되지 않은 상태에서는 `terragrunt`를 실행할 수 없다.
* `main.tf`에 저장된 리소스 정보들은 `commons_vars.yaml` 설정에 있는 내용과 동일하게 설정되어야 한다.

```bash
$ cd init
$ make init
$ make plan
$ make apply
```

## 배포

```bash
$ cd deploy
$ make init
$ make plan
$ make apply
```