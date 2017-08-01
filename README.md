# latex-hanyang-thesis

이 latex 서식은 한양대학교 일반대학원 박사과정 졸업논문 양식을 Latex 스타일로 구현한 버전입니다. 이 서식은 학교에서 배포하는 공식 버전이 아니므로, 꼭 **매년 배포되는 양식과 동일한지 확인바랍니다.**

## 양식 설명

- 용지 : B5 JIS
- 영어 글꼴 : (제목) ArnoPro (본문) Noto
- 한글 글꼴 : (제목, 본문) 나눔명조
- 크기 : (본문) 10pt
- 줄간격 : (본문) 200%

## How to use

`main.tex`에서 각 항목을 적절한 값으로 기입합니다.

```
\title : 논문 제목
\author : 본인 성함
\submitdate : 졸업 년월(e.g. August 2017)
\copyrightyear : 저작권 발생년(대부분 졸업 년과 같음)
\dept : 학과
\principaladviser : 지도교수 성함
\firstreader : 심사위원장 성함
\secondreader : 심사위원1 성함
\thirdreader : 심사위원2 성함
\fourthreader : 심사위원3 성함
\fifthreader : 심사위원4 또는 지도교수 성함
```

`chapter/chapter1.tex`과 `chapter2.tex`에 논문 각 장을 기입합니다. 필요시 `chapter3.tex`와 같이 새 파일을 만들어 새 장을 기입할 수 있으며, 추가된 장은 `main.tex`의 `\include{chapter/chapter2}` 밑에 순서대로 추가합니다.

레퍼런스는 `.bib`를 지원하지만, 규정화된 스타일이 아니므로 수집 및 편의 목적으로 사용하고, 졸업논문에는 `bibliography.tex`을 사용하여 명확히 기입하기를 추천합니다.

## Printing

규정에 따라 논문은 B5 JIS를 기준으로 되어 있으므로, A4에 인쇄 시 'Actual size (실제크기)'로 인쇄해야 합니다. 'Fit (맞춤)'으로 인쇄하면 확대 인쇄되므로 규정과 크기 및 여백이 다릅니다.

> 학교 규정 상 표지, 제출서, 인준서는 A4로 안내되어 있으나, 지정된 여백을 감안하면 본문이 B5 JIS 내에 위치하므로, A4에 'Actual size' 인쇄하면 규정을 위반하지 않음

## Bookbinding

하드표지 금박 제본 시, 사용된 글꼴의 두께가 두꺼워 어렵다면 아래와 같이 임시로 글꼴을 변경하여 PDF에서 표지만 추출 후 제본사에 요청하십시오.

`hanyang-thesis.cls` 파일에서 93 줄을 주석처리(%)하고, 94 줄의 주석을 제거합니다. (보다 자세히, `setFontToArnoPro` 변수 중 Size가 12-50인 글꼴을 `ArnoPro-RegularSubhead`로 변경합니다.)

등(측면) 표지는 제본사에 따라 다르므로, `ArnoPro` 폰트를 보내어 요청하거나 가장 유사한 폰트로 사용하기를 요청해야 합니다.

> 제본사에 따라 표지의 좌우 여백이 부족하여, 몇 % 축소 인쇄할 수 있음

## For Master Degree

석사 과정의 경우, `hanyang-thesis.cls` 파일에서 Doctor of Philosophy를 알맞게 바꾸고, 인준서 페이지의 심사위원 수를 줄이면 가능하나, 비율이 알맞지 않을 수 있습니다(확인하지 않음).