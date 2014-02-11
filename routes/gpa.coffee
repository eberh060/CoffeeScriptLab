formString = '
<div>    \n
    <D1> GPA Calculator</D1>\n
</div>\n
\n
<form name="class1" >\n
    <lable>Class 1\n
    <br />\n
    <select name="grade1">\n
        <option select="selected" value=0>-select grade-</option>\n
        <option value=4>A</option>\n
        <option value=3.666>A-</option>\n
        <option value=3.333>B+</option>\n
        <option value=3>B</option>\n
        <option value=2.666>B-</option>\n
        <option value=2.333>C+</option>\n
        <option value=2>C</option>\n
        <option value=1.666>C-</option>\n
        <option value=1.333>D+</option>\n
        <option value=1>D</option>\n
        <option value=.666>D-</option>\n
        <option value=0>F</option>\n
    </select>\n
\n
\n
    <br />\n

    <select name="credit1">\n
            <option select="selected" value=0>-select credit-</option>\n
            <option value=1>1</option>\n
            <option value=2>2</option>\n
            <option value=3>3</option>\n
            <option value=4>4</option>\n
            <option value=5>5</option>\n
    </select>\n
    </lable>\n
\n
</form>\n
\n
<br />\n
\n
<form name="class2">\n
    <lable>Class 2\n
    <br />\n
    <select name="grade2">\n
        <option select="selected" value=0>-select grade-</option>\n
        <option value=4>A</option>\n
        <option value=3.666>A-</option>\n
        <option value=3.333>B+</option>\n
        <option value=3>B</option>\n
        <option value=2.666>B-</option>\n
        <option value=2.333>C+</option>\n
        <option value=2>C</option>\n
        <option value=1.666>C-</option>\n
        <option value=1.333>D+</option>\n
        <option value=1>D</option>\n
        <option value=.666>D-</option>\n
        <option value=0>F</option>\n
    </select>\n
\n
    <br />\n
\n
    <select name="credit2">\n
            <option select="selected" value=0>-select credit-</option>\n
            <option value=1>1</option>\n
            <option value=2>2</option>\n
            <option value=3>3</option>\n
            <option value=4>4</option>\n
            <option value=5>5</option>\n
    </select>\n
    </lable>\n
\n
</form>\n
\n
\n
<br />\n
\n
<form name="class3">\n
    <lable>Class 3\n
        <br />\n
        <select name="grade3">\n
        <option select="selected" value=0>-select grade-</option>\n
        <option value=4>A</option>\n
        <option value=3.666>A-</option>\n
        <option value=3.333>B+</option>\n
        <option value=3>B</option>\n
        <option value=2.666>B-</option>\n
        <option value=2.333>C+</option>\n
        <option value=2>C</option>\n
        <option value=1.666>C-</option>\n
        <option value=1.333>D+</option>\n
        <option value=1>D</option>\n
        <option value=.666>D-</option>\n
        <option value=0>F</option>\n
        </select>\n
\n
        <br />\n
\n
        <select name="credit3">\n
            <option select="selected" value=0>-select credit-</option>\n
            <option value=1>1</option>\n
            <option value=2>2</option>\n
            <option value=3>3</option>\n
            <option value=4>4</option>\n
            <option value=5>5</option>\n
        </select>\n
    </lable>\n
\n
</form>\n
\n
\n
<br />\n
\n
<form name="class4">\n
    <lable>Class 4\n
        <br />\n
        <select name="grade4">\n
        <option select="selected" value=0>-select grade-</option>\n
        <option value=4>A</option>\n
        <option value=3.666>A-</option>\n
        <option value=3.333>B+</option>\n
        <option value=3>B</option>\n
        <option value=2.666>B-</option>\n
        <option value=2.333>C+</option>\n
        <option value=2>C</option>\n
        <option value=1.666>C-</option>\n
        <option value=1.333>D+</option>\n
        <option value=1>D</option>\n
        <option value=.666>D-</option>\n
        <option value=0>F</option>\n
        </select>\n
\n
        <br />\n
\n
        <select name="credit4">\n
            <option select="selected" value=0>-select credit-</option>\n
            <option value=1>1</option>\n
            <option value=2>2</option>\n
            <option value=3>3</option>\n
            <option value=4>4</option>\n
            <option value=5>5</option>\n
        </select>\n
    </lable>\n
\n
</form>\n
\n
<br />\n
\n
<button type="submit">submit</button>\n'

headerStr = '<!DOCTYPE html>\n
<html>\n
<head>\n
    <title>GPA calculator</title>\n
</head>\n
<body>\n'

footerStr = '</body>\n</html>'

#gradesToNumbers = (grade1)->
 #  switch grade
 #    when grade1 == "A" then 4
 #    when grade1 == "A-" then 3.666
 #    when grade1 == "B+" then 3.333
 #    when grade1 == "B" then 3
  #   when grade1 == "B-" then 2.666
 #    when grade1 == "C+" then 2.333
  #   when grade1 == "C" then 2
 #    when grade1 == "C-" then 1.666
 #    when grade1 == "D+" then 1.333
  #   when grade1 == "D" then 1
  #   when grade1 == "D-" then .666
  #   else 0

numbersToArray = (grade1,grade2, grade3, grade4) ->
  gradesArr = [0,0,0,0]
  gradesArr[0] = grade1
  gradesArr[1] = grade2
  gradesArr[2] = grade3
  gradesArr[3] = grade4
  return gradesArr

creditsToArr = (credit1, credit2, credit3, credit4) ->
  creditArr = [0,0,0,0]
  creditArr[0] = credit1
  creditArr[1] = credit2
  creditArr[2] = credit3
  creditArr[3] = credit4
  return creditArr

gradeIt = (grades, credits) ->
  gradeCredits = grades[0] * credits[0] + grades[1] * credits[1] + grades[2] * credits[2] + grades[3] * credits[3]
  creditTotal = credits[0] + credits[1] + credits[2] + credits[3]
  gpa = (gradeCredits/creditTotal).toFixed(3)
  return gpa




exports.gpaResponse = (req, res) ->
  res.render 'gpa'

exports.gpaPostResponse = (req, res) ->
  res.send headerStr + formString + '<p>Your GPA is ' + gradeIt(numbersToArray(req.body.class1.grade1.value,req.body.class2.grade2.value,req.body.class3.grade3.value, req.body.class4.grade4.value),creditsToArr(req.body.class1.credit1.value, req.body.class2.credit2.value, req.body.class3.credit3.value, req.body.class4.credit4.value)) + '</p>' + footerStr

module.exports.numbersToArray = numbersToArray
module.exports.creditsToArr = creditsToArr
module.exports.gradeIt = gradeIt































