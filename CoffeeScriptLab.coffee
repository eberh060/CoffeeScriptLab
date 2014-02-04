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