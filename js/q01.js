String.prototype.reverse = function () {
    return this.split('').reverse().join('')
}

let i = 11

while (true) {
    if ( (i.toString() == i.toString().reverse()) &&
         (i.toString(2) == i.toString(2).reverse()) &&
         (i.toString(8) == i.toString(8).reverse())
    ) {
        console.log(i.toString(), i.toString(2), i.toString(8))
        break;
    }
    i++
}