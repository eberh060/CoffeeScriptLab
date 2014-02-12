// Generated by CoffeeScript 1.7.1
(function() {
  var assert, creditsToArr, gradeIt, gradesToNumbers, numbersToArray;

  assert = require('assert');

  gradeIt = require('./gpa').gradeIt;

  creditsToArr = require('./gpa').creditsToArr;

  numbersToArray = require('./gpa').numbersToArray;

  gradesToNumbers = require('./gpa').gradesToNumbers;

  describe("testing numbersToArray", function() {
    return it("should return array [4,3.666,2.666,1]", function() {
      return assert.deepEqual(numbersToArray("A", "A-", "B-", "D"), [4, 3.666, 2.666, 1]);
    });
  });

  describe("testing creditsToArr", function() {
    return it("should return array [1,2,3,5]", function() {
      return assert.deepEqual(creditsToArr(1, 2, 3, 5), [1, 2, 3, 5]);
    });
  });

  describe("testing gradeIt", function() {
    describe("test 1", function() {
      return it("should return 4", function() {
        return assert.equal(gradeIt([4, 4, 4, 4], [1, 2, 3, 5]), 4);
      });
    });
    describe("test 2", function() {
      return it("should return 3.256", function() {
        return assert.equal(gradeIt([3.666, 3, 4, 2.666], [5, 4, 1, 3]), 3.256);
      });
    });
    return describe("test 3", function() {
      return it("should return 2.972", function() {
        return assert.equal(gradeIt([2.666, 1, 4, 3.333], [1, 3, 5, 3]), 2.972);
      });
    });
  });

  describe("testing gradesToNumbers", function() {
    return describe("test 1", function() {
      return it("should return 3", function() {
        return assert.equal(gradesToNumbers("B"), 3);
      });
    });
  });

}).call(this);

//# sourceMappingURL=gpaTesting.map
