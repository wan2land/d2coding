# D2 Coding

D2Coding 폰트를 용도에 맞게 빌드해놓았습니다.

## 설치

> 컴퓨터에 다운로드 받을 목적이면 공식 저장소([naver/d2codingfont](https://github.com/naver/d2codingfont/))를 이용해주세요.

```bash
npm i d2coding
```

## 사용

총 4개의 css 파일로 구성되어있습니다. [d2coding-full.css](d2coding-full.css) 파일이 기본으로 설정되어있습니다.

- [d2coding-full.css](d2coding-full.css): D2Coding 한글 전체
- [d2coding-subset.css](d2coding-subset.css): D2Coding 한글 서브셋
- [d2coding-ligature-full.css](d2coding-ligature-full.css): D2Coding Ligature 한글 전체
- [d2coding-ligature-subset.css](d2coding-ligature-subset.css): D2Coding Ligature 한글 서브셋

## 빌드

소스를 빌드하려면 다음 라이브러리가 필요합니다. 전부 `pip`를 통해 설치가능합니다.

- [fonttools](https://github.com/fonttools/fonttools)
- [brotli](https://pypi.org/project/Brotli/)
- [zopfli](https://pypi.org/project/zopfli/)

빌드 스크립트는 [Makefile](Makefile)을 참고하세요.

```bash
make build
```

## 참고

- [Github - naver/d2codingfont](https://github.com/naver/d2codingfont)
- [웹폰트의 사용과 최적화, 이상진](https://medium.com/@hyunalee419/feconf-korea-%EC%9B%B9%ED%8F%B0%ED%8A%B8%EC%9D%98-%EC%82%AC%EC%9A%A9%EA%B3%BC-%EC%B5%9C%EC%A0%81%ED%99%94-%EC%9D%B4%EC%83%81%EC%A7%84-58c210fa77c4)
- [웹폰트 경량화 - 폰트툴즈의 pyftsubset을 사용한 폰트 서브셋 만들기](https://www.44bits.io/ko/post/optimization_webfont_with_pyftsubnet)

## 라이센스 

'누구나 사용'할 수 있고 또 OFL 라이센스 하에서 '누구나 재배포' 하실 수 있습니다.

D2 Coding 글꼴은 OFL(Open Font License)이라는 국제적으로 인정받는 공개 글꼴을 위한 라이센스를 채택하여 사용에 대한 제약을 없앰과 동시에 재배포에 대한 제약도 획기적으로 완화하여, 이 라이센스를 명시하기만 하면 다른 프로그램(상용 프로그램 포함)에 이 개발자용 D2 Coding 글꼴을 포함하여 재배포하는 것도 허용합니다.

자세한 사항은 아래 [OpenFontLicense](https://github.com/naver/d2codingfont/wiki/Open-Font-License)를 참고하세요~
