assert = require 'assert'

add1 = (arr) -> num + 1 for num in arr


describe "testing comprehensions 1", ->
  it "should return an array [1, 2, 3]", ->
    assert.deepEqual(add1([0, 1, 2]), [1, 2, 3])

replaceOne = (arr) -> for num in arr
  if num == 1
    num = 0
  else
    num

describe "testing comprehensions 2", ->
  it "should return an array [0, 0, 2, 3]", ->
    assert.deepEqual(replaceOne([1,1,2,3]),[0,0,2,3])

containsNegative = (arr) ->
  x = false
  for num in arr
    if num < 0
     x = true
  x

describe "testing comprehensions 3", ->
  it "should return true", ->
    assert.equal(containsNegative([0, -1, 5, 6]), true)

describe "testing comprehensions 4", ->
  it "should return true", ->
    assert.equal(containsNegative([0, 1, 5, 6]), false)


sliceElementsZeroTwo = (arr) -> arr[0...3]

describe "testing slicing 1", ->
  it "should return an array [1,2,3]", ->
    assert.deepEqual(sliceElementsZeroTwo([1,2,3,4,5,6]),[1,2,3])

sliceElementsFiveEnd = (arr) -> arr[5..]

describe "testing slicing 2", ->
  it "should return an array [5, 2, 1]", ->
    assert.deepEqual(sliceElementsFiveEnd([0, 1, 2, 3, 4, 5, 2, 1]), [5, 2, 1])



spliceNegatives = (arr) -> arr[..-1] = [-1,-2,3,-4,-5]

describe "testing splicing 2", ->
  it "should return an array [-1,-2,3,-4,-5]", ->
    assert.deepEqual(spliceNegatives([1,2,-3,4,5]), [-1,-2,3,-4,-5])

spliceTwo = (arr) -> arr[..2] = [0, 1, 2]

describe "testing splicing 1", ->
  it "should return an array [0, 1, 2]", ->
    assert.deepEqual(spliceTwo([3, 4, 5]), [0, 1, 2])

spliceThree = (arr) -> arr[0..2] = [5,6,7]

describe "testing splicing 3", ->
  it "should return an array [5, 6, 7, 4, 5, 6]", ->
    assert.deepEqual(spliceThree([1,2,3,4,5,6]), [5,6,7])

notNullAndNotZero = (int) -> true if int? and not 0

describe "testing Existential operators 1", ->
  it "should return true", ->
    assert.deepEqual(notNullAndNotZero(7), true)


speedLimit = (int) -> 'too fast' if int is 70 or 71

describe "testing Existential operators 2",->
  it "should return 'too fast'", ->
    assert.equal(speedLimit(70), 'too fast')

greaterThanOther = (a, b) -> if a? and b? and a > b
    a
  else b

describe "testing Existential operators 3", ->
  it "should return 3", ->
    assert.equal(greaterThanOther(2, 3), 3)


oneOrTwo =(num) ->if num is 1 or 2 then true else false

describe "testing aliases 1", ->
  it "should return true", ->
    assert.deepEqual(oneOrTwo(1),true)

go = (boolean) -> if boolean isnt no and on then "do it" else "don't do it"

describe "testing aliases 2", ->
  it "should return 'do it'", ->
    assert.equal(go(true), "do it")

alwaysTrue = (vari) -> true if on and not off

describe "testing aliases 3", ->
  it "should always return true", ->
    assert.deepEqual(alwaysTrue(1), true)


person =
  name: "Henry"
  age: 20
  sex: "male"

nameAndAge = -> return person.name + " - " + person.age

describe "testing destructuring 1", ->
  it "should return 'Henry - 20' ", ->
    assert.equal(nameAndAge(), "Henry - 20")

decisions =
  yes: "yes"
  no: "no"
  maybe: "maybe"

yesOrNo = -> return decisions.yes

describe "testing destructuring 2", ->
  it "should return yes", ->
    assert.equal(yesOrNo(), "yes")

thingyOne = 100
thingyTwo = 0

switchThem = ->
  [thingyOne, thingyTwo] = [thingyTwo, thingyOne]
  return thingyOne


describe "testing destructurting 3", ->
  it "should return 0", ->
    assert.equal(switchThem(), 0)

describe "testing splat 1", ->
  i