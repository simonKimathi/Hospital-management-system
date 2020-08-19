/*learning
this,bind,literals,call,apply and prototype;

What is this?
    The JavaScript this keyword refers to the object it belongs to.

    It has different values depending on where it is used:

    *In a method, this refers to the owner object.
    *Alone, this refers to the global object.
    *In a function, this refers to the global object.
    *In a function, in strict mode, this is undefined.
    *In an event, this refers to the element that received the event.
    *Methods like call(), and apply() can refer this to any object.

    method is a function that belongs to an object
*/

var car={
    type:"fiant",
    color:"blue",
    details:function () {
        return this.type+" "+ this.color; //refers to owner of object
    }
}
var x = this; //returns browser window object
//same case to
        "use strict"
        var x=this;
        console.log(x);
//also in
    function myfunct(){
        return this;
    }
    //but doesn't allow strict mode in function
"use strict";
function myFunction() {
    return this;
}
/*Redeclaring a variable using the let keyword can solve this problem.

    Redeclaring a variable inside a block will not redeclare the variable outside the block:

    Example*/
var x = 10;
// Here x is 10
{
    let x = 2;
    // Here x is 2
}
// Here x is 10

//explicit function binding
//The call() and apply() methods are predefined JavaScript methods.
//
// They can both be used to call an object method with another object as argument.
//bind() can be used when the function needs to be called later in certain events when it's useful.
//Demo with javascript .call()

var obj = {name:"Niladri"};

var greeting = function(a,b,c){
    return "welcome "+this.name+" to "+a+" "+b+" in "+c;
};

console.log(greeting.call(obj,"Newtown","KOLKATA","WB"));
// returns output as welcome Niladri to Newtown KOLKATA in WB

//Demo with javascript .apply()

var obj = {name:"Niladri"};

var greeting = function(a,b,c){
    return "welcome "+this.name+" to "+a+" "+b+" in "+c;
};

// array of arguments to the actual function
var args = ["Newtown","KOLKATA","WB"];
console.log("Output using .apply() below ")
console.log(greeting.apply(obj,args));

/* The output will be
  Output using .apply() below
 welcome Niladri to Newtown KOLKATA in WB */
var obj1={ names:"kim" };

var fn=function (a,b) {
    return a+" "+this.names+" "+b;
}
console.log(fn.call(obj1,"symoh","john")); //using call
//using bind
var args=("symoh","john");//can be many

console.log(fn.apply(obj1,args));

//bind or prototype
//creating a bound function
var bound=fn.bind(obj1);

console.log(bound("symoh","john"));//calls bound function

//Using the prototype Property
// The JavaScript prototype property allows you to add new properties to object constructors:

function persion(fn,ln,age){
    this.fn=fn;
    this.ln=ln;
    this.age=age;
}
persion.prototype.county="meru";
//also can add new methods
persion.prototype.nameF=function (){
    return this.fn+" "+this.ln;
}

//literals

//arrays
var fruit=[]; //empty

var fruits=["appple","mango"];
//INTEGERS
//object
var ob={}

//ajax
//way of accessing web servers from a web page










