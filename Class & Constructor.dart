void main() {
  var name= new Myname('Sabbir','Afridi');
  name.printName();
}

class Myname{
  String fname;
  String lname;
  Myname(this.fname,this.lname);
  
  printName()
  {
    print('$fname $lname');
  } 
}