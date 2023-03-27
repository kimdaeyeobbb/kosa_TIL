# Git & Github

## 버전관리 시스템

### 버전 관리 시스템을 왜 사용할까?

- 버전 관리 시스템이란, 파일의 변동 사항을 기록 해두었다가 추후 특정 시점상 버전의 코드를 checkout할 수 있는 시스템이다.

#### 버전 관리 시스템을 사용하면

1. 각 파일을 이전 상태로 되돌릴 수 있다.
2. 프로젝트를 통째로 이전 상태로 되돌릴 수 있다
3. 버전의 수정 내용을 비교해 볼 수 있다
4. 파일의 버전을 수정한 팀원을 찾을 수 있다

#### 결론

- 문제가 발생할 경우 특정 시점으로 되돌아가서 복구할 수 있기 때문에 유용하게 사용한다.

### 로컬 버전관리 시스템 (LVCS)

- 간단한 DB를 사용하여 파일의 변경 정보를 관리함
- RCS

### 중앙집중식 버전 관리 (CVCS)

- 프로젝트 진행시 팀원들이 소스코드를 공유하기 위해 개발됨
- 로컬 버전관리 시스템과 달리 파일을 별도로 관리하는 서버를 둠
- 변경된 파일을 저장순서대로 관리함
- 파일을 관리하는 서버가 별도로 존재하고, 클라이언트가 중앙 서버에서 파일을 체크아웃해서 사용함
- 서버가 다운될 경우 프로젝트의 모든 히스토리가 사라질 문제점이 있음
- Subversion, CVS

### 분산 버전 관리 시스템 (DVCS)

- 여러 사람이 협동작업하는 환경에서 문서 변경 사항을 관리하는 시스템
- 서버에 문제가 생기더라도 복제물로 작업을 할 수 있음.
- Remote repository (클라우드 원격 저장소)가 존재하여 다양한 사람들과 협업할 수 있음
- Git, Mecurial, Bazaar

<hr> 
<br>

## Git

- 분산 버전 관리 시스템(DVCS)

### 특징

- 변경사항을 적절히 저장했다가 필요시점으로 되돌릴 수 있음
- 서로 다른 변경 사랑들을 쉽게 합칠 수 있음
- 로컬저장소에 작업하는 내용은 작업자 컴퓨터에 가지고 있으므로 네트워크가 끊어지더라도 작업이 가능하다
- 다른 버전 관리 시스템보다 빠르다
- 원격 저장소를 연결하여 협업 가능

### 역사

- 깃은 리눅스와 관련있다
- 리눅스 커널 소스는 오픈 소스 프로젝트로 개발되어 BitKeeper 라는 상용 DVCS를 무료로 사용하고 있었다. 그러다가 관계가 틀어져서 이용이 철회되어서 개발해서 사용한 것

### 개발원칙

- 빠른 속도
- 단순한 구조
- 비선형적인 개발 (수천개의 동시 다발적인 branch)
- 완벽한 분산
- (속도/데이터 측면에서) 리눅스 커널같은 대형 프로젝트에도 유용할 것임

### 참고자료

- [Git - Book](https://git-scm.com/book/en/v2)

### 파일 저장 방식

- Git은 저장소 파일 시스템 전체를 스냅샷으로 취급하여 커밋된 시점의 저장소 상태가 하나의 버전이 된다.
- 파일이 저장되지 않은 경우, Git은 성능을 위해 파일을 새로 저장하지 않음 (단지 이전 상태에 대한 링크만 제공함)
- Git은 데이터를 스냅샷 스트림으로 취급함

### 파일 관리

- Git은 파일을 세가지 상태로 관리함

#### 1. Modified

- 수정한 파일을 local DB에 commit하지 않은 상태

#### 2. Staged

- 현재 수정한 파일을 곧 commit 할 것이라고 표시한 상태

#### 3. Committed

- 데이터가 local DB에 안전하게 저장되었다는 것을 의미함

#### TIP>

- Git directory
  - 메타 데이터와 객체 db가 저장되는 곳이며, 저장소를 clone할 때 생성된다.

#### 유의사항

- 개발자들이 하지 말아야하는 것 중 하나
  - 바탕화면에 폴더를 만들어놓고 작업을 하는 것
    <br>(유저이름이 한글로 되어있는 케이스가 있는데 이는 문제를 일으키기도 한다.)

### local & remote repository

#### local repository

- 내 PC에 파일이 저장되는 개인 전용 저장소

##### push

- 로컬 저장소에 커밋한 작업 내용을 공개하고 싶은 경우 원격 저장소에 push(업로드)함

- push와 commit의 차이점을 제대로 알고 있어야 함!

#### remote repository

- 파일이 원격 저장소 전용 서버에서 관리되며 여러 사람이 함께 공유하기 위한 저장소

- 원격 저장소에서 다른 사람이 작업한 파일을 로컬 저장소로 가져올 때 pull을 사용함

<br>

## Subversion (SVN)

- CVS의 단점을 개선하고 이를 대체할 목적으로 개발됨
- 오픈 소스 기반의 소스 버전관리 도구임
- 각 파일의 변경을 시점별로 관리함
- 네트워크를 통해서 팀원들이 접근 가능함

## GitHub

- S/W 개발 버전 관리를 위한 인터넷 호스팅 서비스

### 기능

- 분산 버전 관리
- 접근 제어
- 버그 추적
- 작업 관리
- CI(Continuous Integration) => 지속적 통합
  - 지속적으로 통합을 하므로 끊김이 없게 됨

### branch

- 커밋의 묶음이며. 특정 커밋을 기준으로 branch를 생성할 수 있음
- 협업 프로젝트상 다른 branch의 커밋에 영향을 받지 않고 작업할 수 있음
  - 따라서 문제 상황에서 유연하게 버전을 관리할 수 있게 됨