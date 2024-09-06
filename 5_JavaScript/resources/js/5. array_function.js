let members=[
    "최지원",
    "김지원",
    "이지원",
    "박지원",
    "안지원",
]

// push
console.log(members.push("신지원"))
console.log(members)


// splice(인덱스, 개수) > 원본에 영향을 줌
console.log(members.splice(1,3))
console.log(members)

// slice


//  filter
// return값이 false요소를 제외하고 true인 요소만 가져올 때
let number2 = [1,6,7,9,10,21];
let tmp2 = [];

tmp2 = number2.filter(n => {
    return n % 2 ===0;
})

console.log(tmp2);

//================================
// find()

















