/*
    Scope
    변수나 함수가 접근할 수 있는 우-효범위

*/

var number1= 20;
function test1(){
    console.log(number1);

}

// test1();

function test2(){
    var number1=40;
    console.log(number1);
}

test2();

var number1=20;

function test3(){
    var number1=40;
    test4();
    console.log("number1 : " + number1)
}

function test4(){
    var number1 = 11;
    console.log("number1 : " + number1)
    console.log("number2 : " + number2)
}

test3();
console.log(number1);