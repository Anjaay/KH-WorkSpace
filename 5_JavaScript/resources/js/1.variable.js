console.log("Hellow world");

/**
 * 
 *  js의 변수 선언
 * 
 * 1) var(변수키워드) - 사용하지 않음
 * 2) let
 * 3) const
 * 
 */

var name = "최지원";
var age = 55;
var height= 190.7;
var isTrue= true;

var name = "김수민";
console.log(name+" "+age+" " + height+" "+isTrue)

/*
    let은 var에서 같은 이름의 중복생성을 하지 못하게 만든 자료형이다.
    다만 let과 var은 모두 값을 변경하는 건 가능함
*/

let name = "최지원";

let name = "안재휘";

/*
    const는 상수를 표현하기 위한 자료형
    값 변경 불가
*/

// let, const만 사용!

const name2 = "최지원";

/*
    js네이밍 규칙

    변수이름 지을 때
    1) 일반적으로 영어를 사용하며 문자와 숫자 모두 가능
    2) 특수문자는 언더스코어와 달리 달러를 사용할 수 있음
    3) 숫자로 시작하면 안됨
    4) 키워드를 변수명으로 사용하면 안됨

    네이밍 타입
    1)camelCase -> 대부분 언어에서 많이 사용하며 단어의 시작마다 대문자로 구현해준다
    2) snake_case -> 파이썬에서 주로 사용하며 단어의 시작마다 _로 구분한다
    3) PascalCase -> c# 및 ms계열의 언어에서 많이 사용하며 매단어 시작은 무조건 대문자
*/


let $name = "김민수";
let _name = "최민수";

/*
    Date Types
    
    여섯개의 원시타입과 한개의 Object타입이 있다.

    1) Number
    2) String
    3) Boolean
    4) undefined
    5) null
    6) Symbol
    7) Object
        - Function
        - Array
        - Object
*/ 

//Number 타입
const age2 = 55;
const tampature = -10;
const pi = 3.14;

// console.log(age2, tampature, pi)
console.log(typeof age2)