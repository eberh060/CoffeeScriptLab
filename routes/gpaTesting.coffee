assert = require 'assert'
gradeIt = require('./gpa').gradeIt
creditsToArr = require('./gpa').creditsToArr
numbersToArray = require('./gpa').numbersToArray
gradesToNumbers = require('./gpa').gradesToNumbers

describe "testing numbersToArray", ->
  it "should return array [4,3.666,2.666,1]", ->
    assert.deepEqual(numbersToArray("A","A-","B-","D"),[4,3.666,2.666,1])

describe "testing creditsToArr", ->
  it "should return array [1,2,3,5]", ->
    assert.deepEqual(creditsToArr(1,2,3,5),[1,2,3,5])

describe "testing gradeIt", ->
  describe "test 1", ->
    it "should return 4", ->
      assert.equal(gradeIt([4,4,4,4], [1,2,3,5]), 4)

  describe "test 2", ->
    it "should return 3.256", ->
      assert.equal(gradeIt([3.666,3,4,2.666],[5,4,1,3]),3.256)

  describe "test 3", ->
    it "should return 2.972", ->
      assert.equal(gradeIt([2.666,1,4,3.333],[1,3,5,3]), 2.972)

describe "testing gradesToNumbers", ->
  describe "test 1", ->
    it "should return 3", ->
      assert.equal(gradesToNumbers("B"), 3)

