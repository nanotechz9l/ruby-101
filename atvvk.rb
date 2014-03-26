#!/usr/bin/env ruby

require 'rainbow'

=begin

        =[ CURENT RELEASE Week 1:: Learn ruby with "atvvk.rb version 0.0.1" += Ruby basics
 + -- --=[ learn the ruby language by studying & writing code & doing code reviews to spot vulns
 + -- --=[ A simple study guide to help you learn ruby. Written by Rick Flores (nanotechz9l)
 
 + -- --=[ This 3 week ruby tutorial series adopts the following learning path:
 + -- --=[ [x01] Week 1 : 'atvvk.rb'      (no pre-requisites)

 + -- --=[ [x02] Week 2 : 'vulnerable.rb' (pre-requisite is Week 1 : atvvk.rb)      
 + -- --=[ write vulnerable code (OWASP Top 10) to quickly identify vulnerabilities during source code reviews

 + -- --=[ [x03] Week 3 : 'sekure.rb'     (pre-requisite is Week 2 : vulnerable.rb) 
 + -- --=[ practice secure software development by securing all previously written vulnerable code from week 2
 
                       # For all updates/pull requests please visit:
                       # Github += https://github.com/nanotechz9l
                        
                        
 + -- --=[ REFs :::
 + -- --=[ awesome tutorial             += http://ruby.learncodethehardway.org/book/
 + -- --=[ awesome vid tutorials        += http://www.lynda.com/Ruby-tutorials/essential-training/47905-2.html
 + -- --=[ awesome api with ajax flavor += http://www.extremetomato.com/misc/files/rubybrain/index.html
 + -- --=[ No ajax, not as awesome ;)   += The Ruby Programming Language/ruby 1.9.3/ruby-doc.org/core-1.9.3/

 
***DISCLAIMER:::

Its important to note that this tutorial was designed to be used in conjunction with the above
lynda.com/Ruby-tutorials video training series, the online ruby API per your ruby version (I crawled the above sites so I didnt need to depend on an active www connection), and irb to really
learn the language fundamentals. You wont learn ruby by watching videos, or simply watching the videos and following along with this script, no, you have to write your own code and
especially do NOT copy and paste. 

Before moving on to the next lesson, make sure you 100% understand the material, and know how/why it outputs what is shown here!!! Otherwise you have already failed yourself.

ALSO atvvk is an acronym for the 5 learning styles::

>> atvvk.shuffle
=> ["verbal", "visual", "tactile", "kinesthetic", "aural"] <- Keep that in mind when learning a new alien language


    =[ x01,   KEYWORDS
    =[ x01.1, STRING ESCAPES
    =[ x01.2, OPERATORS
    =[ x01.3, RUBY VARIABLE SCOPE INDICATORS
    
    =[ x02,   OBJECT TYPES
       + -- --=[ x02.1    Objects
       + -- --=[ x02.2    Variables
       + -- --=[ x02.2.2  Variable scope indicators
       + -- --=[ x02.3    Integers
       + -- --=[ x02.4    Floats
       + -- --=[ x02.5    Strings
       + -- --=[ x02.6    Arrays
       + -- --=[ x02.7    Array methods
       + -- --=[ x02.8    Hashes
       + -- --=[ x02.9    Symbols
       + -- --=[ x02.10   Booleans
       + -- --=[ x02.11   Ranges
       + -- --=[ x02.12   Constants
             
     =[ x03,   CONTROL STRUCTURES
        + -- --=[ x03.1 Conditionals if, else, elsif
        + -- --=[ x03.2 Conditionals unless, case
        + -- --=[ x03.3 Loops
        + -- --=[ x03.4 Iterators

     =[ x04,   CODE BLOCKS
        + -- --=[ x04.1 What is a code block
        + -- --=[ x04.2 Find
        + -- --=[ x04.3 Merge
        + -- --=[ x04.4 Collect
        + -- --=[ x04.5 Sort 
        + -- --=[ x04.6 Inject
             
     =[ x05,   METHODS
        + -- --=[ 0x5.1 Defining and calling methods
        + -- --=[ 0x5.2 Variable scope in methods
        + -- --=[ 0x5.3 Arguments
        + -- --=[ 0x5.4 Argument default values
        + -- --=[ 0x5.5 Return value
        + -- --=[ 0x5.6 Operators are also methods
            
     =[ x06,   CLASSES
        + -- --=[ 0x6.1  Defining and using classes
        + -- --=[ 0x6.2  Instances
        + -- --=[ 0x6.3  Attributes
        + -- --=[ 0x6.4  Reader writer methods
        + -- --=[ 0x6.5  Attribute methods
        + -- --=[ 0x6.6  Initialize method
        + -- --=[ 0x6.7  Class methods
        + -- --=[ 0x6.8  Class attributes
        + -- --=[ 0x6.9  Class reader writer methods
        + -- --=[ 0x6.10 Inheritence
        + -- --=[ 0x6.11 Subclass overriding
        + -- --=[ 0x6.12 Accessing the superclass
             
      =[ x07,   MODULES
         + -- --=[ 0x7.1 Namespacing
         + -- --=[ 0x7.2 Mixins
         + -- --=[ 0x7.3 Load, require, and include
         + -- --=[ 0x7.4 Enumerable as a mixin
     
      =[ x08,   WORKING WITH FLAT FILES
         + -- --=[ 0x8.1  Input output basics
         + -- --=[ 0x8.2  File system basics
         + -- --=[ 0x8.3  File paths
         + -- --=[ 0x8.4  Accessing files
         + -- --=[ 0x8.5  Writing to files
         + -- --=[ 0x8.6  Reading from files
         + -- --=[ 0x8.7  File pointer
         + -- --=[ 0x8.8  Renaming and deleting files
         + -- --=[ 0x8.9  Examining file details
         + -- --=[ 0x8.10 Working with directories
     

     # THE BELOW LESSONS WILL BE AVAILABLE in atvvk.rb version 0.0.2 (after I get some rest, I DO accept pull requests btw)!!
     
     =[ x09,   WORKING WITH DATABASES
               -- coming soon, probably not in this series though (not enough time)
     
     =[ x10,   WORKING WITH NETWORKING SOCKETS
               -- coming soon, probably not in this series though (not enough time)
=end

#----------------------------------------------
     'KEYWORDS'
#----------------------------------------------
     
Define the following Ruby reserved keywords:
"alias"     Creates an alias for an existing method, operator, or global variable
"and"       Logical operator, same as && except and has lower precedence, compare with (or)
"BEGIN"     Code, enclosed in { and }, to run before the program runs
"END"       Code, enclosed in { and }, to run when the program ends
"begin"     Begins a code block or group of statements, closes with (end)
"break"     Terminates a while or until loop or a method inside a block
"\case"     Compares an expression with a matching when clause, closes with (end), see (when)
"class"     Defines a class, closes with (end). Once a class is defined, such as Gun, Knife, its a constant part of the program and acts as a "constant" too 
"def "      Defines a method, closes with (end)
"defined?"  A special operator that determines if a variable, method, super method, or block exists
"do"        Begins a block & executes code in that block, closes with (end)
"else"      Executes following code if previous conditional, in if, elsif, unless, or when, is not true
"elsif"     Executes following code if previous conditional, in if or elsif, is not true
"end"       Ends a code block (group of statements) starting with (begin), (def), (do), (if), (class), etc
"ensure"    Always executes at block termination, use after last (rescue)
"false"     Logical or Boolean false, instance of FalseClass, see (true)
"for"       Begins a for loop, used with (in)
"if"        Executes code block if conditional statement is true, closes with end, compare with (unless), (until)
"in"        Used with for loop, see (for)
"module"    Defines a module, closes with (end)
"next"      Jumps before a loops conditional, compare with (redo)
"nil"       Empty, uninitialized variable, or invalid, but not the same as zero, object of (NilClass)
"not"       Logical operator (negation), same as (!)
"or"        Logical operator, same as || except or has lower precedence, compare with (and)
"redo"      Jumps after a loops conditional, compare with (next)
"rescue"    Evaluates an expression after an exception is raised, used before (ensure)
"retry"     Repeats a method call outside of rescue, jumps to top of block (begin) if inside resuce
"return"    Repeats a value from a method or block, may be omitted
"self"      Current object (invoked by a method)
"super"     Calls method of the same name in the superclass, the superclass is the parent of this class
"then"      A continuation for (if), (unless), & (when), may be omitted
"true"      Logical or Boolean true, instance of TrueClass, see (false)
"undef"     Makes a method in current class undefined
"unless"    Executes code block if conditional statement is false, compare with (if), (until)
"until"     Executes code block while conditional statement is false, compare with (if), (unless)
"when"      Starts a clause, (one or more) under (case)
"while"     Executes code while the conditional statement is true
"yield"     Executes the block passed to the method
"__FILE__"  Name of current source file
"__LINE__"  Number of current line in the current source file


#-------------------------------------------------------------
     'STRING ESCAPES' 
#-------------------------------------------------------------

# For string escape sequences, use them in strings to make sure they do what you think they do.

Define the following Ruby string escape seqences:
"\a"        Bell/alert (0x07)
"\b"        Backspace (0x08)
"\e"        Escape (0x1b)
"\f"        Formfeed (0x0c)
"\n"        Newline (0x0a)
"\r"        carriage Return (0x0d)
"\s"        whiteSpace (0x20)
"\t"        Tab (0x09)
"\v"        Vertical tab (0x0b)
"\nnn"      Octal nnn
"\xnn"      hexadecimal nn
"\cx"       control-x
"\C-x"      control-x
"\M-x"      meta-x
"\M-\C-x"   meta-control-x
"\x"        character x itself (\"'" a single quote, for example)
'#{expr}'   Value of expr
"\\"        single backslash
"\'"        single quote # example is \'
"\""        double quote # example is \"


#-----------------------------------------------
     'OPERATORS' 
#-----------------------------------------------

# Some of these may be unfamiliar to you, but look them up anyway. Find out what they do and if you still can't figure it out, save it for later.

Define the following Ruby operators:
"[]"           Returns a new array populated with the given objects.    
"-"(unary)     Not, complement, unary plus and minus (method names for the last two are +@ and -@)
"+"(unary)     Not, complement, unary plus and minus (method names for the last two are +@ and -@)     
"::"(unary)    Allows constants, instance methods and class methods defined within a class or module, to be accessed from anywhere outside the class or module.
"?:"(ternary)  Conditional expression Otherwise, invokes obj.=~, passing str as an argument. The default =~ in Object returns false.

Define the following Ruby Arithmetic operators:
"**"     Exponent - Performs exponential (power) calculation on operators
"+"      Adds values on either side of the operator
"-"      Subtraction - subtracts right hand operand from left hand operand
"*"      Multiplication - Multiplies values on either side of the operator
"/"      Division - Divides left hand operand by right hand operand
"%"      Modulus - Divides left hand operand by right hand operand and returns remainder

Define the following Ruby Logical operators:
"!"      Called Logical NOT Operator. Reverses the logical state of its operand. If a condition is true then Logical NOT operator will make false.
"&&"     Called Logical AND operator. If both the operands are non zero then then condition becomes true.
"||"     Called Logical OR Operator. If any of the two operands are non zero then then condition becomes true.
"||="    Conditional assignment operator. Assign a variable if it hasnt already been assigned.
"and"    Called Logical AND operator. If both the operands are true then then condition becomes true.
"or"     Called Logical OR Operator. If any of the two operands are non zero then then condition becomes true.
"not"    Use to reverses the logical state of its operand. If a condition is true then Logical NOT operator will make false.

Define the following Ruby Comparison operators:
"!="     Checks if the value of two operands are equal or not, if values are not equal then condition becomes true.
">="     Checks if the value of left operand is greater than or equal to the value of right operand, if yes then condition becomes true.
"<"      Checks if the value of left operand is less than the value of right operand, if yes then condition becomes true.
"<="     Checks if the value of left operand is less than or equal to the value of right operand, if yes then condition becomes true.
"<=>"    Returns 0 if first operand equals second, 1 if first operand is greater than the second and -1 if first operand is less than the second. 
"=="     Checks if the value of two operands are equal or not, if yes then condition becomes true.
"==="    Used to test equality within a when clause of a case statement.
".eql?"  True if the receiver and argument have both the same type and equal values.
"equal?" True if the receiver and argument have the same object id.

Define the following Ruby Object operators:
"!~"     Returns true if two objects do not match (using the =~ method), otherwise false. 

Define the following Ruby Bitwise operators:
"~"      Binary Ones Complement Operator is unary and has the efect of 'flipping' bits.
"<<"     Binary Left Shift Operator. The left operands value is moved left by the number of bits specified by the right operand.         
">>"     Binary Right Shift Operator. The left operands value is moved right by the number of bits specified by the right operand.        
"&"      Binary AND Operator copies a bit to the result if it exists in both operands. 
"|"      Binary OR Operator copies a bit if it exists in eather operand.
"^"      Binary XOR Operator copies the bit if it is set in one operand but not both. 

Define the following Ruby Splat operators: 
"*"      Defining methods that take an unlimited number of arguments:

Define the following Ruby Range operators:
".."     Creates a range from start point to end point inclusive
"..."    Creates a range from start point to end point exclusive

Define the following Ruby Assignment operators:
"="      Simple assignment operator, Assigns values from right side operands to left side operand
"+="     Add AND assignment operator, It adds right operand to the left operand and assigns the result to left operands
"-="     Subtract AND assignment operator, It subtracts right operand from the left operand and assign the result to left operand
"*="     Multiply AND assignment operator, It multiplies right operand with the left operand and assign the result to left operand
"/="     Divide AND assignment operator, It divides left operand with the right operand and assign the result to left operand    
"%="     Modulus AND assignment operator, It takes modulus using two operands and assign the result to left operand
"**="    Exponent AND assignment operator, Performs exponential (power) calculation on operators and assign value to the left operand

Define the following Ruby String operators:
"=~"     Match—If obj is a Regexp, use it as a pattern to match against str,and returns the position the match starts, 
         or nil if there is no match. Otherwise, invokes obj.=~, passing str as an argument. The default =~ in Object returns false.


#----------------------------------------------------------------------------
     'x02 OBJECT TYPES'  
#----------------------------------------------------------------------------

#----------------------------
     '#1 OBJECTS'  
#----------------------------

# Ruby is an object oriented programming language. Everything in ruby is an object, except for variables. All of the following ruby object types are related because they are all objects. Many other programming languages have primitives. Primitives are like ruby objects, but they dont have a common relationship like ruby object types do. An object is the fundamental building block in ruby. Everything you manipulate is an object, and everything that is returned by your manipulation is an object. All objects are instances of a class. In the terms of students and classrooms, each unique student is an example of the classification student. In programming we would say that each student is an object or an instance of the class student. They're all unique, but they also all have something in common as well. 
     
#----------------------------
     '#2 VARIABLES'  
#----------------------------
     
# Variables are not objects. We can use them to keep track of our objects, and to give us an easy way to talk about, and reference our objects while programming. Variables need to have a value assigned to them before you can start using them because they are all undefined by default. 
     
     # Example: Assign a value to variable 'atvvk'
     
     atvvk  = ["aural", "tactile", "verbal", "visual", "kinesthetic"]
     => ["aural", "tactile", "verbal", "visual", "kinesthetic"]
     atvvk.shuffle
     => ["kinesthetic", "verbal", "aural", "tactile", "visual"]
     
     # atvvk is a variable that is pointing to an object (the array is an object, and the return value is even an object). Let me reiterate again by saying that everything in ruby is an object, except for variables, which allow us to point to our objects. Many different programming languages have naming conventions for variables like $char for example (variable has to start with the '$' sign). In ruby thats not true. All we have to do is have an all lower case / underscored name ('var_kill = xyz'). 
     
#----------------------------------------------------------------------------
     '#2.2 VARIABLES | VARIABLE SCOPE INDICATORS'  
#----------------------------------------------------------------------------

# In addition to just having a lowercase_inderscored word be the name of our variable name. We can also put some additional characters in front of it that will let ruby know what the scope of the variable is, and where it should be available. Scope determines whether or not we have access to variables form inside classes, methods, and other coding structures. So far in this tutorial, we have only covered local variables (nothing in front of it). 
     
Define the following Ruby Variable Scope Indicators:
'$variable'    global variable
'@@variable'   class variable
'@variable'    instance variable
'variable'     local variable
'variable'     block variable

# Example: details coming soon!


#----------------------------
     '#3 INTEGERS'  
#----------------------------
 
# Interers are simply numbers. In ruby, numbers are divided into two major categories or subclasses of the interger class.  The only difference is the way ruby stores these values in memory. Characters are stored as numbers in RAM. Every letter & symbol has an ASCII value. 
     
     # Bignum: consumes more ram to store bigger numbers, & reserve more space.
     
     # To keep it from taking up to much space all the time, fixnum is used for smaller numbers.
     
     # Fixnum: more efficient for smaller numbers, and ruby switches back and forth automatically as needed.
     
     #1 Integers
     #2 Floating-point numbers (precision-floats) // known outside of programming as decimal numbers
     
     >> 1234.class
     => Fixnum                        # small numbers
     >> x
     => 5376767751082385640407296
     >> x.class
     => Bignum                       # big numbers
     
     # Integer methods
     >> -200                         # integers can also be negative
     => -200
     >> -200.abs                     # absolute value
     => 200
     >> -200.next                    # next in sequence
     => -199
     >> 200.next
     => 201
     
     
#----------------------------
     '#4 FLOATS'  
#---------------------------- 
     
     # known outside of programming as::
       Floating-point numbers (floats)
       - Decimal numbers
       - Numbers with precision 

       => 12345.6789
       >> 12345.6789.class
       => Float
       >> x = 10
       => 10              # regular integer
       >> y = 10.0
       => 10.0            # precision number 
       >> x.class
       => Fixnum          # confirmed regular integer
       >> y.class
       => Float           # confirmed precision number
       
       # Regular integers can be converted to floats on the fly:
       >> x + 1
       => 11
       >> x + 1.0
       => 11.0
       
       # Tell ruby what you want
       >> 10 /3
       => 3
       >> 10 /3.0
       => 3.3333333333333335
       
       # As shown above, if you want ruby to give a precise answer, give it a precise question
       
       # 10 / 3 is interger divided by integer
       # 10 / 3.0 is interger divided by a float
       
       # Useful methods
       >> 12345.6789.round          # round up to the nearest Fixnum integer
       => 12346
       >> 12345.6789.to_i           # convert float to a Fixnum integer // rounded down 
       => 12345
       >> 12345.6789.floor          # force it to always round down
       => 12345
       >> 12345.6789.ceil           # force it to always round up // short for ceiling
       => 12346
       
#----------------------------
     '#5 STRINGS'  
#----------------------------

# Strings are a sequence of characters that are strung together. 
                # They can be a letter, word, sentence, paragraph, or even several paragraphs
     
'strings'        Collection of textual characters including digits, letters, whitespace, & symbols of any length. All are objects of Rubys string class. puts "Die!".class << String

'string literal' Embedded directly into code/program using quotation marks. This differs from a 'string' whose data comes from a remote surce, typing in text, a file, or internet.

                # Examples:
                 >> "hello"
                 => "hello"
                 >> 'hello'
                 => "hello"
                 >> greeting = 'hello'
                 => "hello"
                 >> target = 'world'
                 => "world"   
                 >> greeting + ' ' + target         # Display helloworld with a space in between 
                 => "hello world"
	         >> "learn"*10                      # Multiply string by 10 and output
                 => "learnlearnlearnlearnlearnlearnlearnlearnlearnlearn"
	         >> 1 * 5
                 => 5
                 >> '1' * 5                         # The string '1' x 5
                 => "11111"                         # Does not automatically convert strings to intergers
		                                     # we have to code it explicitly.
	         # >> 'I\'m escaped'                # Escape the single quote otherwise ruby will think its the 
		                                     # end of the string
                 => # "I'm escaped
		  
		 # Difference between single quoted and double quoted strings
		 # Difference #1: Double quoted strings do extra evaluation that allow the use 
		 # of escape characters inside them. 
		  
		 # Double quotes
	         # \t tab \n newline
		 >> puts "\ta\tb\nc\nd"           # Performs extra evaluation (correct)             
                          a       b
                 c
                 d
		  
	         # Single quotes
		  
	         >> puts '\ta\tb\nc\nd'           # Interpretes it as a literal string (incorrect)
                 \ta\tb\nc\nd
		  
	         # Difference #2: double quoted strings allow you to drop in variables to be evaluated.
                 >> puts "I want to say #{greeting} #{target}!" # Performs extra evaluation (correct)
                 I want to say hello world!
		  
	         >> puts 'I want to say #{greeting} #{target}!'
                 I want to say #{greeting} #{target}!           # Interpretes it as a literal string (incorrect)
		  
		 # We can also put any ruby expression inside the curly braces.
		 >> puts "1 + 1 = #{1+1}"
                 1 + 1 = 2
		 
		 # Common methods
		 >> "Hello".capitalize
                 => "Hello"
                 >> "Hello".reverse
                 => "olleH"
                 >> "Hello".capitalize
                 => "Hello"
                 >> "Hello".downcase
                 => "hello"
                 >> "Hello".upcase 
                 => "HELLO"
                 >> "Hello".length
                 => 5
		 
		 # Daisy chaining // applies to all objects in ruby, NOT just strings!!
                 >> "Hello".reverse.upcase
                 => "OLLEH"
                 >> "Hello".reverse.upcase.length
                 => 5 # From the snippet above, each time were returning an object, and applying a new method to it
		  
		 #string methods
                 "Test" + "Test" = TestTest, "Test".capitolize = Test, "Test".downcase = test, 
                 "Test".chop = Tes, "Test".next = Tesu, "Test".reverse = tseT, "Test".sum = 416, 
		 "Test".length =4 # For the complete list of methods, see the API documentation for your specific ruby version. Remember that different classes have different methods.

#----------------------------
     '#6 ARRAYS'  
#----------------------------
 
# An ordered, interger-indexed collection of objects. Take objects, keep them in position by order & we can refer to them by their indexed position.
                 
                 # Objects that can go into arrays:
                 Strings + Numbers + Other Arrays + Mixed Types + Larger Complex Objects & Classes + what else?
                 
		 # Array Examples:
		 data_set = [] # create an empty array & assign the data_set variable
                 data_set = ["a", "b", "c"] # this array holds these values together & keeps the in order
		                            # in order to receive the values you can ask the array to return the value based on its indexed position.
		 # Pulling Array Values:
		 data_set[1]  # specify that we want the data set in position 1.
		 => "b"       # notice that it echoed out "b" instead of "a" because all arrays are indexed
		              # startng at 0.
		 data_set = ["a", "b", "c"]
		 # Index  #   0    1    2
		 data_set[2]
                 => "c"
                 data_set[3]
                 => nil # obviously this is blank (;
		 
		 # Setting Array Values:
		 data_set[0] = "d" # remove the "a" value & insert "d" at position 0
                 => "d" # return value cofirms
                 data_set[0] # call data_set 0
                 => "d" # return value that our remove/insert array method worked
                 data_set # call the data_set
                 => ["d", "b", "c"] # return value cofirms
		 
		 # Appending Array Values #1 :
		 data_set << "e" # append "e" to the last index position in the array
                 => ["d", "b", "c", "e"] # return value confirms
		 
		 # Remove Array Values:
		 data_set[1] = nil # remove "b" and assign nill in its place at index 1
                 => nil # return value cofirms
                 data_set # call data_set
                 => ["d", nil, "c", "e"] # holds 1st place with nil, & remembers values 0, 2, & 3
		 
		 # Clearing Array Values 1:
                 data_set = [] # clear it back to an empty array
		 data_set.class # check the class
                 => Array # array class
		 data_set.clear # ".clear" function wipes the array
                 => [] # return value cofirms array is cleared
		 data_set # call data_set to confirm its clear
                 => [] # cleared!
		 data_set = nil # no longer an array // do not clear like this!
                 => nil # return value confirms
                 data_set # call data_set
                 => nil # no longer an array // do not clear like this!
                 data_set.class # confirm by checking the class
                 => NilClass # means it has nothing. An empty array, and having nothing are two different things
		 
#----------------------------
     '#7 ARRAY METHODS'  
#----------------------------
		 
		 # Array Madness by Manipulating Methods:
		 array = [1, 2, 3, 4, 5]
                 => [1, 2, 3, 4, 5] # return value confirms
                 array2 = [1, "2", 3.0, ["a", "b"], "dog"] # mixed type array include floats, intergers, strings 
                 => [1, "2", 3.0, ["a", "b"], "dog"] # return value confirms
		 
		 # Inspecting Arrays
		 array.inspect
                 => "[1, 2, 3, 4, 5]" # returns string value "" in the array to see whats going on
		 array                # returns value of the array, its not a string as shown above in quotes
                 => [1, 2, 3, 4, 5]
		 puts array           # echo the array to the user
                 1
                 2
                 3
                 4
                 5
                 puts array.inspect  # peak inside the array (notice the diff usecases for this .inspect method)
                 [1, 2, 3, 4, 5]
		 puts array2.inspect # very useful when dealing with mixed type arrays as shown below
                 [1, "2", 3.0, ["a", "b"], "dog"]
                 puts array2         # does not show the array structure detals like .inpsect method
		                     # Example: Values a, & b are listed on different lines, when in fact they are arrays within the array as seen above
                 1                                                                                                                                 
                 2                                                                                                                                 
                 3.0                                                                                                                               
                 a                                                                                                                                 
                 b
                 dog
		 array2.to_s        # unlike .inspect, it smashes everything together & turns it into a string
		                    # by joining them together
                 => "[1, \"2\", 3.0, [\"a\", \"b\"], \"dog\"]"
		 array2.join        # same as .to_s, but we can also specify what we want to join it with
                 => "123.0abdog"
		 array2.join(", ")  # join the array seperated by commas
                 => "1, 2, 3.0, a, b, dog"
		 
		 # Converting from string to Array
		 x = "1,2,3,4,5"    # do the above operations in reverse on this string
                 => "1,2,3,4,5"
                 y = x.split(", ")  #  takes the string, upon each comma (new element), & creates an array
                 => ["1,2,3,4,5"]
		 y                  # y is = to the new array created above 
                 => ["1,2,3,4,5"]
		 
		 # Appending/Removing Array Values #2 :
		 array << 0              # append 0 to the end of array
                 => [1, 2, 3, 4, 5, 0]
		 array.push(4)           # append the # 4 to the end of the array
                 => [1, 2, 5, 0, 4]
		 array.pop               # takes the last value in the array and removes it
                 => 4
		 array                   # calling array confirms the action
                 => [1, 2, 5, 0]
		 array.shift             # removes the value from the first indexed position from the array
                 => 1
		 array                   # calling array confirms this
                 => [2, 5, 0]
		 array.unshift(1)        # put the 1 back at the beginning of the indexed position
                 => [1, 2, 5, 0]
                 array                   # calling array confirms this
                 => [1, 2, 5, 0]
		 
		 # Sorting Arrays:
		 array.sort # sort array from 0..5 // we cant sort mix type arrays like "array2" above
		            # using the simple sort, there are other complex ways to do it. More on that later.
                 => [0, 1, 2, 3, 4, 5]
		 
		 # Find / remove duplicate uniq values within arrays
		 array  << 3
                 => [1, 2, 3, 4, 5, 0, 3]
		 array.uniq  # returns an array with no duplicates // temporary not perm, as seen below!
                 => [1, 2, 3, 4, 5, 0]
		 array       # we did not change the array like with "<<3" above, we just says puts another
		             # version/array that has no unique values in it. 
                 => [1, 2, 3, 4, 5, 0, 3]
		 array.uniq! # remove the duplicate value from the array with the ! symbol
                 => [1, 2, 3, 4, 5, 0]
		 
		 # Clearing Array Values 2:
		                     # assuming you "know" the index position # you want to remove: 
		 array.delete_at(2)  # remember indexing starts at 0, so 2 is actually 3 as proof above.
                 => 3                # it returns what it deleted => 3
		 array               # it did not mark index position 2 nil, it simply pulled it from the array, 
		                     # and moved the rest of the values over. The way we did it above, left nil
		                     # in place as a placeholder
                 => [1, 2, 4, 5, 0]        
		 
		                     # assuming you "dont" know the index position # you want to remove:
		 array.delete(4)     # remove the number 4, not position index 4, the #4 !!!
                 => 4
		 array               # calling array once more confirms this
                 => [1, 2, 5, 0]     # video 07 Array methods.mov @ 05:21 explains it well!
		 
		 # Adding Arrays:
		 array + [9, 10, 11, 12, 13]  # this is ONLY temp, & does not change the array!
                 => [1, 2, 5, 0, 9, 10, 11, 12, 13]
                 new_array = array + [9, 10, 11, 12, 13] # making it a PERM change
                 => [1, 2, 5, 0, 9, 10, 11, 12, 13, 9, 10, 11, 12, 13]
		 new_array          # calling new_array confirms this
                 => [1, 2, 5, 0, 9, 10, 11, 12, 13, 9, 10, 11, 12, 13]
		 
		 # Subtracting Arrays:
		 new_array = array - [9, 10, 11, 12, 13]
                 => [1, 2, 5, 0]
                 new_array          # calling new_array confirms this
                 => [1, 2, 5, 0]
		 new_array = array - [2] # same effect as doing a delete searching for the # 2
                 => [1, 5, 0, 9, 10, 11, 12, 13] # again, this is not PERM!
	 
#----------------------------
     '#8 HASHES'  
#----------------------------

# An unordered, object-indexed collection of objects or (key-value pairs). You cant depend on the order in which values are stored in hashes. Also, instead of being indexed by position, and keeping track of the number like done for arrays, hashes are kept track of by using an object or key-value pair. They have one object thats the label(key), and it references a second object thats the contents(value). Hashes are not in order, so they can be rearranged. A Hash is a collection of key-value pairs. It is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index. The order in which you traverse a hash by either key or value may seem arbitrary, and will generally not be in the insertion order.

# Hashes have a default value that is returned when accessing keys that do not exist in the hash. By default, that value is nil.

=begin

               Example:

               Arrays(preserve order) keeps track of values by indexing the position & assigning a number slot. 
               When to use an array:
               When you want to preserve the order, and the the position matters.
                 
               Hashes(Labeled) have an assigned label(key), and its contents(value). 
               When to use a hash:
               When the order does not matter, and you want the convinience of having that label to be able to refer to values as labels instead of having to remember what was in index position # 7? This is not needed, as a hash can used. Other programming languages might refer to them as dictionaries.

=end

               # Array example
               developer = ['Rick', 'Flores', 'exploitdev', 'green', 'black'] # <- array
               => ["Rick", "Flores", "exploitdev", "green", "black"]
               # Using an array with this type of data is very restricted because its lack of detail. 
	       # This array simply does not tell you what is what; example: how long has he been doing exploitdev, 
	       # is green the color of his eyes, or his favorite color, is black the color of his t-shirts, 
	       # or the color of his laptop? These questions can not be easily answered by using an array, 
	       # and thus a hash with labels is needed. See below.
	       
	       # Hash example
	       developer = {'first_name' => 'Rick', 'last_name' => 'Flores'}
               => {"first_name"=>"Rick", "last_name"=>"Flores"}
	       # You can always identify hashes by the curly braces & key value pairs {"war" => "xyz"}
	       # First name is an object and a string and refers to Rick which combines the key/value pair.
	       # The => "equal/greater/than" lets us know first_name is the key/label that applies to Rick/value
	       
	       # Request the hash object "INDEX" value
	       developer['first_name'] # we request the object index value by providing the key
               => "Rick"
	       developer['last_name'] # same for here
               => "Flores"
	       
	       # Request the hash object "KEY" value (the reverse of the above operation)
	       developer.index('Rick') # find the value 'Rick', & return its key to us
               (irb):8: warning: Hash#index is deprecated; use Hash#key
               => "first_name"
	       
	       # Mixed hash with numbers, strings, and arrays
	       mixed = {1 => ['a', 'b', 'c'], 'hello' => 'world', [10,20] => 'top'}
               => {1=>["a", "b", "c"], "hello"=>"world", [10, 20]=>"top"}
	       # numbers (1), strings (hello world), & arrrays ([10, 20])
	       # irb might return the output out of order (it didnt in this case), but who cares, if it does, because, order does not matter with hashes as discussed above remember.
	       
	       # Return values
	       mixed[1] # return the value for the 1 label
               => ["a", "b", "c"]
	       mixed['hello']  # return the value for the 'hello' label, <- single quotes because its a string
               => "world"
	       mixed[[10, 20]] # return the array value top for the [10, 20] label
               => "top"
	       mixed.keys      # Return all keys
               => [1, "hello", [10, 20]]
	       mixed.values    # Return all values as an ARRAY!  <-----
               => [["a", "b", "c"], "world", "top"]
               mixed.length    # gives the number of values in the hash
               => 3
	       >> mixed.size   # gives the number of values in the hash
               => 3
	       mixed.to_a      # returns each key/value pairs to 3 "each individual" array pairs
	       
               => [[1, ["a", "b", "c"]], ["hello", "world"], [[10, 20], "top"]]
	       
	       # Clear the hash
	       mixed.clear     # clear the hash
               => {}
	       mixed           # confirm
               => {}           # <- confirmed
	       
	       mixed = {}      # clear the hash
	       => {}
               mixed           # confirm
               => {}           # <- confirmed
	       
	       # Add key value pair to an existing hash
	       developer # call the current hash
               => {"first_name"=>"Rick", "last_name"=>"Flores"}
               >> developer.class # confirm its a hash class
               => Hash
	       developer['interest'] = 'Reverse-Engineering' # Add key value pair to an existing hash
               => "reverse-engineering"
               >> developer                                # confirm key/value pair was added
               => {"first_name"=>"Rick", "last_name"=>"Flores", "interest"=>"Reverse-Engineering"}
    
#----------------------------
     '#9 SYMBOLS'  
#----------------------------
     
 # Symbols are going to seem alot like strings and variables, but they are not. A symbol is a label used to identify a piece of data. A string can also be used as a label as used by hashes. So why do we need symbols?
     
 # Symbols are better because they are stored in memory one time vs strings that are stored each time. So, in order to reduce the memory footprint of our ruby programs, we need to use symbols.
     
     >> :this_test
     => :this_test
     >> :this_test.class
     => Symbol                             # Im just checking the symbol class here, nothing important
     
     # String test vs symbol test  // important!
     >> "test".object_id                   
     => 10952840                           # test1: The object_id of the string "test"
     >> :test.object_id                    
     => 146888                             # test2: Symbol" object_id is different than the "string" object_id
     >> "test".object_id
     => 10823180                           # test3: The object_id of the string "test" is different each time!!
     >> :test.object_id
     => 146888                             # Remains the same because it re-uses the same symbol already stored
                                           # in memory each time the :test label is called!!
     
     # The reason for the three different object_id's is because ruby created a new string called "test" for test3:, and in doing so it created a new object with a new object_id. So it didnt re-use the first object we created via test1: with object_id of "10952840" as shown above. This is important, make sure you understand what is going on here before moving forward. Doing this a couple times in irb might help clarify.
     
     # For that reason, symbols work really well inside hashes.
     >> hash = {:first_name => 'Rick', :last_name => 'Flores'}
     => {:first_name=>"Rick", :last_name=>"Flores"}
     >> hash['first_name']                                     # Incorrect hash method call
     => nil
     >> hash[:first_name]                                      # Correct hash method call
     => "Rick"
     
     # Symbols are not variables
     >> :test = 1
     SyntaxError: (irb):51: syntax error, unexpected '=', expecting $end
     :test = 1
     ^
     from /usr/bin/irb:12:in <main>
     hash[:first_name]                                       # Hash is the variable, with the first_name label
     
     # Bottomline
     # If what were talking about really is a word, the sequence of characters is important, or if its going to be for output, then well use a string. But if its a label being used to identify a piece of data, or to pass a message around differnt parts of our ruby program, then we should use symbols.  

#----------------------------
     '#10 BOOLEANS'  
#----------------------------
    
# A boolean is like an on/off switch, and will have the value 1 or 0, or true or false. Booleans are typically used for doing comparisons. For example:
     
     if x  = 1, then output x
     if x != 1, then output y

         # Ruby Comparison operators:
">="     Checks if the value of left operand is greater than or equal to the value of right operand, if yes then condition becomes true.
"<"      Checks if the value of left operand is less than the value of right operand, if yes then condition becomes true.
">"      Checks if the value of left operand is greater than the value of right operand, if yes then condition becomes true.
"<="     Checks if the value of left operand is less than or equal to the value of right operand, if yes then condition becomes true.
"<=>"    Returns 0 if first operand equals second, 1 if first operand is greater than the second and -1 if first operand is less than the second. 
"=="     # Called the "equal to" operator. It checks if the value of two operands are equal or not, if yes then condition becomes true.
"==="    Used to test equality within a when clause of a case statement.
".eql?"  True if the receiver and argument have both the same type and equal values.
"equal?" True if the receiver and argument have the same object id.

         # Ruby Logical operators:
"!"      Called Logical NOT Operator. Reverses the logical state of its operand. If a condition is true then 
Logical NOT operator will make false. It also checks if the value of two operands are equal or not, if values are not equal then condition becomes true.
"!="     Called Logical NOT equal operator. If x is not = to 1, 
"&&"     Called Logical AND operator. If both the operands are non zero then then condition becomes true.
"||"     Called Logical OR Operator. If any of the two operands are non zero then then condition becomes true.
"or"     Called Logical OR Operator. If any of the two operands are non zero then then condition becomes true.
"and"    Called Logical AND operator. If both the operands are true then then condition becomes true.
"not"    Use to reverses the logical state of its operand. If a condition is true then Logical NOT operator will make false.

# Test cases
         >> x =1          # assigns the value of 1 to the x variable 
	                  # "=" is the assignment operator // careful to not mix these up!
         => 1
         >> x ==1         # a test to see if x is infact = to 1, if it is, it will be true, & pass the test 
         => true
         >> true.class
         => TrueClass
         >> false.class
         => FalseClass
         >> x !=1                             # Is x not equal to 1?
         => false                             # Returns false because x is = 1
	 >> x < 3                             # Is x less than 3?
         => true                              # Yes it is.
	 >> x > 3                             # Is x greater than 3?
         => false                             # No its not.
	 >> !x                                # NOT x
         => false                             # False because there is an existing x object
	 >> y = false                         # y is equal to false
         => false        
	 >> y
         => false                             # y is equal to false
         >> !y                                # NOT y is true because y is currently set to false! Easy right (;
         => true                              # Find the reverse, which is true
	 >> 1 <= 4 && 5 <= 100                # Is 1 less than or equal to 4 && is 5 less than or equal to 100
         => true                              # Both conditions were true
	 >> 1 <= 4 && 5 <= 100 && 100 >= 200  # False because the requirement was for ALL of them to be true
         => false
	 >> 1 <= 4 || 5 <= 100 || 100 >= 200  # "Or" as long as the first on is true, the rest dont matter. The 
         => true                              # result will return true because only ONE of them has to be true.
         >> 16 <= 4 || 5 <= 100 || 100 >= 200 # 16 is not less than 4, but 5 is less than 100, so it STOPS, and 
         => true                              # returns true. Remember that it only has to find one that is true.
	 >> 16 <= 4 || 500 <= 100 || 100 >= 200 # Now it returns false because none of these are true. 
         => false                               # If this, or this, or this, and none of them are true, so false!
	 
	 # Useful Boolean Methods
         >> x
         => 1
         >> y
         => false
         >> x.nil?
         => false             # Returns false because x is == 1
         >> y.nil?
         => false             # Returns false because y is == false
	 >> z = nil
         => nil
         >> z.nil?
         => true              # Returns true because z is == nil
	 >> 2.between?(1,4)
         => true
	 >> [1,2,3].empty?
         => false
	 >> [].empty?
         => true
         >> [1,2,3].include?(2)
         => true
         >> [1,2,3].include?(5)
         => false
	 >> {'a' => 1, 'b' => 2}.has_key?('a')
         => true
         >> {'a' => 1, 'b' => 2}.has_key?(:a)
         => false
         >> {'a' => 1, 'b' => 2}.has_value?(2)
         => true
	 
#----------------------------
     '#11 RANGES'  
#----------------------------

# A range of numbers.

                x = ['a', 'b', 'c', 'd', 'e', 'f', 'g'] # Long way to code it out 
		('A'..'G')                               # Fast way to do it!
                
		# There are two types of ranges
		# Inclusive range is more common
		
		# Inclusive Range
		1..10  # 1,2,3,4,5,6,7,8,9,10 
		1..10
                => 1..10
                >> x = 1..10
                => 1..10
                >> x.class
                => Range
                >> 1..10.class
                ArgumentError: bad value for range # Logic error shown
                from (irb):4
                from /usr/bin/irb:12:in <main>
                >> (1..10).class                   # Applying a method directly to a range will give errors.               Assign it to a value "x = 1..10" or simply use ()'s instead to do it correctly.
                => Range
		
                # Exclusive Range
		1...10 # 1,2,3,4,5,6,7,8,9
		# This range differs from inclusive in that the command '1...10' means, to exclude the last value, so 1 up to but not inluding 10
		
		# Useful methods
		x.begin 
                => 1
                >> x.end
                => 10
		x.first
                => 1
                >> x.last
		=> 10
		
		# Checking which is inclusive vs exclusive
		=> x
                => 1..10
                >> y
                => 1....10
                >> x.include?(10)
                => true
                >> y.include?(10)
                => false
		>> [*x]
                => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                >> [*y]
                => [1, 2, 3, 4, 5, 6, 7, 8, 9]
		
		# Check to see if a specific number is included
		x.include?(1)
                => true
		
		# Display range contents with splat operator
		[*x]                    
                => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		
		# Assigning a value & placing x data inside an array 
		z = [*x]          # "*" is the splat operator
                => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                >> z
                => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                >> z.class
                => Array
		
		# String Ranges
		alpha = 'a'..'m'
                => "a".."m"
                >> alpha.include?('g')
                => true
		[*alpha]                # Display full range contents with splat operator
                => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"]

#----------------------------
     '#12 CONSTANTS'  
#----------------------------

# Values that never change, reresented in Ruby by a variable name beginning with a capitol letter += Pi = 3.141592. Constants are rarely used in ruby. 
     
     # Constants are similar to variables:
     # - Not true objects
     # - They point to objects
     
     # The difference is that a constant is a constant value that should stay the same. A variable will change over time, hence the name variable. Anything that begins with a capitol letter is considered a constant.
     
     >> Constant = 10
     => 10
     >> Constant = 20
     (irb):196: warning: already initialized constant Constant  # Warning indicating constant already initialized
     => 20
     >> Constant
     => 20                                                      # It still made the change anyway
     
     
#----------------------------------------------------------------------------
     'x03 CONTROL STRUCTURES'  
#----------------------------------------------------------------------------

#--------------------------------------
     '#1 CONDITIONALS IF, ELSE, ELSIF'  
#--------------------------------------
     
     # Control structures provide the ACTION in ruby programs. Its whats going to decide what takes place under certain circumstances by using conditionals.    
     
     # Example:
     # If something is true, do one thing, if its not true, do something else. Well run one set of code under certain conditions and another under different conditions, thats why they are called conditionals. 
     
     # One conditional
     if x ==1
       xyz  # run this code if the boolean evauates to true, if not, dont bother, just move on
     end
     
     # Two conditionals | Yes, no action
     if x ==1
       xyz  # run this code if the boolean evauates to true, if not, dont bother, just move on
     else
       xyz # run this code if the boolean evauates to false, if not, dont bother, just move on
     end 
     
     # Three conditionals | More complicated choices 
     if x ==1
       puts "x==1"        # run this code if the boolean evauates to true, if not, dont bother, just move on
     elsif x ==2
       puts "x==2"        # run this code if the boolean evauates to false, if not, dont bother, just move on
     else 
       puts x !=1 && !=2  # run this code if the above conditions are not met.
     end
     
     if x < 10          # if x is less than 10
       puts "Below 10"  # run this code if the boolean evauates to true, if not, dont bother, just move on
     elsif x > 20       # if x is greater than 20
       puts "Over 20"   # run this code if the boolean evauates to false, if not, dont bother, just move on
     else 
       puts "10-20"     # run this code if the above conditions are not met.
     end 
     
     # As seen above, parenthesis, and curly braces are not needed for conditionals. Tab indentation is not read or understood by the ruby interpreter, they are just there for readability.
     
     # Place conditionals inline
     >> name = "Rick"
     => "Rick"
     >> puts "This is Rick" if name == "Rick"  # Return the statement if it evaluates to true
     This is Rick

#--------------------------------------
     '#2 CONDITIONALS UNLESS, CASE'  
#--------------------------------------
     
     # Unless, and case are convenient conditionals also.  
     
     #-------------------
     # - UNLESS OPERATOR 
     #-------------------
         unless x ==1 # Unless a boolean is true
       xyz  # run this code 
     end 
     
         if !x==1    # If not true | Its the reverse
       xyz  # run this code
     end 
     
     
     
     #-------------------
     # - CASE OPERATOR 
     #-------------------
     
     if x < 10          # if x is less than 10
       puts "Below 10"  # run this code if the boolean evauates to true, if not, dont bother, just move on
     elsif x > 20       # if x is greater than 20
       puts "Over 20"   # run this code if the boolean evauates to false, if not, dont bother, just move on
     else 
       puts "10-20"     # run this code if the above conditions are not met.
     end 
     
     # The exact same thing as the if statements in the previous lesson, we've just re-written it using the case operator. It might even have more lines of code, infact it does. However, using case has several advantages when doing long, complex parallel assignments.
     
     def fib_up_to(max)
  i1, i2 = 1, 1 # parallel assignment (i1 = 1 and i2 = 1)
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end

fib_up_to(1000) {|f| print f, " " } 
puts

     # When we start to have alot of these complex decision making routines, it is best to use the case operator as a short hand method.
     
     # When x =1 do this, When x =2 do this, When x =3 do this ...etc
     case              # Lets look at a set of cases  
     when x < 10       # when this is true, do this
       puts "Below 10" # run this code if the boolean evauates to true, if not, dont bother, just move on
     when x > 20       # when this is true, do this
       puts "Over 20"  # run this code if the boolean evauates to false, if not, dont bother, just move on
     else 
       puts "10-20"    # run this code if the above conditions are not met.
     end
     
     # The best and more common way to use case is to put the test value right after case.
     # When x =1 do this, When x =2 do this, When x =3 do this ...etc
     case exploit_true    # Lets look at a set of cases  
     when x < 10          # when this is true, do this
       puts "Below 10"    # run this code if the boolean evauates to true, if not, dont bother, just move on
     when x > 20          # when this is true, do this
       puts "Over 20"     # run this code if the boolean evauates to false, if not, dont bother, just move on
     else 
       puts "10-20"       # run this code if the above conditions are not met.
     end 
     
     # The above is really a shorthand and saves the developer from having to write x==1, x==2 eachtime, ...etc!
     # You just say x when its 1, when its 2, when its 3, ...etc! We can also have the else statement at the end or we can leave it off if you want.
     
     # Other programming languages might call this technique switch!
     # If that is what you are use to, then we recommend you switch over and start using case instead.
     
     
     
     #--------------------------
     # - TERNARY OPERATOR == ?
     #--------------------------
     
     # A shortcut for simple if/else statements
     
     # Long way!
     if exploit_true
        code1 ...
     else
       code2 ...
     end
     
     # For simple conditionals writing up 5 lines takes up alot of space. You can save tons of space by using the ternary operator = ?
     
     # Short way!
     boolean ? code1 : code2 # This is only for real quick/short conditionals, nothing complex
                             # The : serves as the else statement
     
     # Example:
     puts x== 1 ? "one" : "not one" # This will either return one || not one! # This is not easily readable code
     # like most ruby is, so make sure to only use it for small tasks, unless ruby obfuscation is your thing... hint... hint (eye-wink) 
     
     
     
     #-------------------
     # - or 
     #-------------------
     
     # 1. Long Hand Example:
     
     if y # If y has a value
        x = y # then set x == y
	else # otherwise
	  x = z # set value of x == z which is a default/fallback value
	  end # end program
	  
	  # 1. Short Hand Example with or operator ||
	  x = y || z
	 
	  
	  
     #-------------------
     # - or-equals 
     #-------------------
	  
	  # 2. Long Hand Example
	  
	  # Unless x already has a value, set x == y
	  unless x # unless x already has a value
             x = y # set x == y which is a default/fallback value
	  end
     
	  # 2. Short Hand Example with or operator || utilizing "|| =" or pronounced as "or equals"
	  x || = y
	  
	  # Bottomline:
	  
	  unless
	    case
	      ternary operator ?
	      or operator ||
		  or equals statement || =
	  
	  #All four of these conditionals are short hand methods that allow the developer to write code a little more efficiently.  You can still use if, else and elsif to accomplish the
	  # exact same thing if you want to write more lines of code, or if the logic is more complex. Remember that you should only use these for simple/short conditionals.
		  
#--------------------------------------
     '#3 CONDITIONALS LOOPS'  
#--------------------------------------
     
     #-------------------
     # - loops 
     #-------------------
	
	      # A loop, loops over, over and over again until we tell it to stop.
	 
	 # Exmple:
	      loop do
		xyz code
	      end
	      
	      # Everything from do to end is called a code block. Well go into details later on in this training
	      # Loop will take a code block and loop thru it over and over again, called an infinite loop!
	      # We dont want it to repeat forever, we only want it to repeat until a certain condition is met. So to control the chaos, we can use the following controls:
	
  	    
	      # The most useful conditionals are break, and next:

     #-------------------
     # - break 
     #-------------------
	      
	      break = # terminate the whole loop
	      # The most useful because we can use a conditional to say if x > 10 then break out of this loop, were done. Break functions as "QUIT IMMEDIATELY"
		  
		  >> x = 0
                  => 0
                  >> loop do               # start a loop
                  ?>     x += 2            # x will increment by two
                  >>   break if x >= 20    # break out of loop  if x is gretater than or = to 20
                  >>   puts x              # if its not then just output the value of x to the screen
                  >>   end                 # terminate loop
                  2
                  4
                  6
                  8
                  10
                  12
                  14
                  16
                  18
                  => nil 
		  
		  # It never outputs the number 20 (next number due in the sequence) because as soon as it gets to the break line, it terminates "QUITS IMMEDIATELY"
		  
	      
     #-------------------
     # - next 
     #-------------------
	     
	      next  = # jump to the next loop
	      # Useful because we can use it to immediately jmp to the next loop, start the loop over again.
	      # But dont do anything thats below/after me. Next functions as "LOOP IMMEDIATELY"
		  
	      >> x = 0
              => 0
              >> x
              => 0
              >> loop do                   # start a loop
              ?>     x += 2                # x will increment by 2
              >>   break if x >= 20        # break out of loop if x is greater than or = to 20
              >>    next if x == 6         # next, if x == 6
              >>   puts x                  # if its not then just output the value of x to the screen
              >>   end                     # terminate loop
              2
              4                            # notice that '6' is missing from the output. 
              8                            # thats because while going thru the loop, & x got to the part where                     
              10                           # x == 6 after it incremented it immediately started the loop over 
              12                           # & it never got to that puts x statement. So we ended up skipping it
              14                           # essentialy it loops itslef 
              16
              18
              => nil
              >>
	      
	
	      # More complex loop use cases:
	      # These are loops that have that boolean break condition built into them.
	     
     #-------------------
     # - while 
     #-------------------
     while boolean            # While something is true, keep doing this loop. 
       code                  # While works the same as if
     end
	
     # Example
                     
     >> x = 0             # Reinitialize X and set value to 0
     => 0
     >> while x < 20      # While x is less than 20
     >>   x += 2          # X will increase/increment by 2
     >>   puts x          # Output x
     >>   end             # End the loop
     2
     4
     6
     8
     10
     12
     14
     16
     18
     20
     => nil
     >>
     
=begin 
     
     TWO VERY IMPORTANT things to make note of, and MAKE SURE you understand.
     
     1. What we have done here is integrate the break if statement at the top, and made it part of the loop 
     structure itself. Thats what our boolean test at the top is, while x < 20
	
     2. In out two previous "Break" loop examples the loop stopped when output reached 18. 
     In our new example above it stops at 20. An important thing to notice about while loops is that
     it matters what the value of X is at the start of the loop. Before when we were doing our break, 
     it MATTERED what was happening INSIDE THE LOOP. We had the break after X incremented, 
     
              >>   loop do                 # start a loop
              ?>   x += 2                  # x will increment by 2
              >>   break if x >= 20        # break out of loop if x is greater than or = to 20
              >>   next if x == 6          # next, if x == 6
              >>   puts x                  # if its not then just output the value of x to the screen
              >>   end                     # terminate loop
     
     it went ahead and looped anyway 
     
     At our current while loop IT DOESNT START THE PROCESS IF THIS BOOLEAN IS TRUE => if "x < 20" is true!!!
     So its evaluating at the very TOP vs INSIDE THE LOOP like the break loop example.
    
     >> while x < 20      # While x is less than 20
     >>   x += 2          # X will increase/increment by 2
     >>   puts x          # Output x
     >>   end             # End the loop
    
    Make sure you understand what is going on here before moving on!!
     
     If we were to write a break loop with the loop being evaluated at the top like our current while loop, vs inside the loop like the original break loop, it would look  like this.
     
   x = 0
  loop do
     break if x >= 20  moved break from below x += 2, to above x += 2 so its first to get evaluated!!
     x += 2
     puts x
  end
 
  Be very careful of those two rules when using while loops, always test your code (;
 
 While and until also work the way if does, and we can use them inline.
  For example:
  
  x = 0
  puts x += 2 while x < 100          # Output x & increment by 2 while x is less than 100
  
  y = 3245
  puts y /= 2 until y <= 1            # Output y divided by equal 2 until y is less than or equal to 1
                                      # Divided by equal "/=" works the exact same way as += does
   So it will keep getting smaller, and smaller and keep putting out the results until y is less than or equal to 1, which is pretty much until the end (;
 
=end
     
     
     #-------------------
     # - until 
     #-------------------
     until boolean          # Until something is true, keep doing this loop. 
       code                 # Until works the same as unless. Unless is the same as if ! (if not)
     end                    # Matter of fact, until is while something is not true.
	      
	#  NOTICE:
        # There is no "do" statement. There is an implied code block but there is no "do" "end" like we have in # a normal loop
	      
	      redo  = # redo this loop
	      
	      retry = # start the whole loop over. This applies to more complex loops we will try later on
	      
           
#--------------------------------------
     '#3 CONDITIONALS ITERATORS'  
#--------------------------------------

     #-------------------
     # - iterators 
     #-------------------
	      
=begin
The real power of Ruby is with the other looping structure called Iterators.
Iterators work alot like loops which we discused earlier. The only difference is that just looping waiting for something to happen, for us to take control and break out of it or to do
something else, instead with an interator were traversing a fixed set of data. We know where the starting point and ending point is. Were basically saying, for each one of these things, do
this process, do this loop, so were gonna do a code block once for each item in a set of data. 

Now we can also accomplish the above with loops, for example:

While Loop:
=end
x = 0
while x < 5     # while x is less than 5
puts "Hello"    # Output "Hello"
x += 1          # X increments by 1
end             # End the while loop
Hello
Hello
Hello
Hello
Hello
=> nil
>>
=begin
What the while loop does is basically output Hello 5 times!
If were trying to do that, we can more simply use the ruby syntax with an interator loop.

Iterator Loop:
=end
>>     5.times do
?>       puts "Hello"
>>     end
Hello
Hello
Hello
Hello
Hello
=> 5
>>
=begin
It might not be obvious how this is iterating, and how its iterating thru numbers, it might just look like its looping 5 times, but its not, and we will cover it soon. But first, lets check
out other common iterators that are similar:
=end
1.upto(5)   {puts "Hello"}    # 1 up to 5, puts hello
5.downto(1) {puts "Hello"}    # 5 down to 1, puts hello
(1..5).each {puts "Hello"}    # Range, 1 to 5, each put hello
=begin
Essentialy what each is dong is, take each item in this range, and do this code block

Also note the curly braces on the code blocks instead of the do and end loops that we are already used to.
This is just a shorthand syntax for it, so we will be using/seeing both, both styles are code blocks,
We will be talking about code blocks next, but for now, just make a note of this:

1. do end is a code block
2. curly braces {} are code blocks

Theres more to an iterator than just making it easier and shorter to write. Theres an awesome feature where we have access to the values inside the dataset while were iterating thru it.

Example:
=end
>> 1.upto(5) do |i|           # |i| is just a local variable being used inside the loop to keep track of
                              # the elements in this dataset
?>     puts "Hello" + i.to_s  # Output hello + value of "i" to string to be presented to the screen  
>>   end                      # terminate loop
=begin
The first time thru i is equal to 1, second time its 2, and so on, it increments all the way up to 5, so it will go in and grab the value of "i" as it increments eachtime and output it to
the screen.

Detailed Breakdown:
=end
>> 1.upto(5) do |i|           # We set the local variable to keep track of datasets as "i"
puts "Hello" + i.to_s         # Code block where we have "i" available to us, "i" is the value of each element
                              # as it iterates thru the dataset. 
>>   end                      # terminate loop

Hello1
Hello2
Hello3
Hello4
Hello5
=> 1
>>    

=begin
Know lets use an example that doesnt use numbers:
=end
>> fruits = ["strawberries", "uvas", "melon"]
=> ["strawberries", "uvas", "melon"]
>> fruits.each do |fruit|  # As it iterates, itll pop a fruit into that value fruit 
?>     puts fruit.capitalize                  # Above line also went thru our loop and iterated thru each item
>>   end
Strawberries                                  # Output value for fruit does MATTER! 
Uvas                                          # Output value for fruit does MATTER!
Melon                                         # Output value for fruit does MATTER!
=> ["strawberries", "uvas", "melon"]          # Return value for fruits does not matter
>>

=begin
If you want to write the same loop another way, you can use the "for" statement as seen below. This is not the same as the for statements in java, c++ etc.
=end
>> for fruit in fruits
>>   puts fruit.capitalize
>>   end
Strawberries
Uvas
Melon
=> ["strawberries", "uvas", "melon"]         # Return value for fruits does not matter 

=begin
We still have access to the same control functions we used with our loops. These work with iterators as well.
=end
break = # terminate the whole loop
The most useful because we can use a conditional to say if x > 10 then break out of this loop, were done. Break functions as "QUIT IMMEDIATELY"

next  = # jump to the next loop
Useful because we can use it to immediately jmp to the next loop, start the loop over again.
But dont do anything thats below/after me. Next functions as "LOOP IMMEDIATELY"
=begin
Redo and Retry are more useful to us while using iterators because:

Now retry doesnt just say, start the loop over, retry says, go back to beginning of the set
["strawberries", "uvas", "melon"]
So it will do ["strawberries", "uvas", "melon"], and do ["strawberries", "uvas", "melon"] again!!

Redo does is similar:
So redo will do ["strawberries", "melon"], and if we do a redo it will do the "melon" again!! We'll ofcourse need to have some branching conditional if statements to ensure were not just
endlessly looping on one thing.

Bottomline:

We can use redo and retry a little more effectively with iterators, than we could with loops
=end
redo  = # redo this loop
	      
retry = # start the whole loop over. This applies to more complex loops we will try later on


     #-----------------------
     # - integer interators
     #-----------------------


Integers/floats: # times, upto, downto, step which meaans go from 1-10, but were gonna step every 2, so 1,3,5,7
Range:           # each, step so from the start of the range to the end by whatever step we tell it like above
Srting:          # each, each_line, each_byte
Array:           # each, each_index, each_with_index (each item in the array with its index) see below ...

fruits.each do |fruit, index|  # We get two values yielded up, or two values we can work with

Hash:            # each, each_key, each_value, each_pair is also two values we can work with
fruits.each do |fruit, index|  # We get two values yielded up, or two values we can work with
  
  # We are going to be using iterators many more times than we use loops. Iterators are much more useful
  # and theres alot more things that we can do with them 
  
#--------------------------------------
     '#4 CODE BLOCKS'  
#--------------------------------------

     #-------------------
     # - what is a code block? 
     #-------------------
     

# Looking at a previous example of a code block like the iterator:

     
     5.times do
       puts "Hello"   # The code block is defined between the do and the end!
     end              
     
# do end is what is used for multi lined code blocks, also works for 1000 lines of code as an example.
# the above method is a long hand example, see the shorthand example below:
     
5.times{puts "Hello"}
Hello
Hello
Hello
Hello
Hello
=> 5
>>

# We also saw that while working with iterators, during each iteration, we can have the iterator 
# yield the value up to a variable, in the below example, a variable that is declared by the
# two pipe symbols.


     #-------------------
     # - block variables long hand example 
     #-------------------

>> 1.upto(5) do |i|                 # i is considered a block variable!
?>     puts "Hello" + i.to_s
>>   end
Hello1
Hello2
Hello3
Hello4
Hello5
=> 1
>>

# Each item in the dataset (1-5), would be yielded up to the i variable, so that would be its value
# each time thru, and we will have access to those values while we are inside our code block.

     #-------------------
     # - block variables short hand example 
     #-------------------

>> 1.upto(5) {|i| puts "Hello" + i.to_s}
Hello1
Hello2
Hello3
Hello4
Hello5
=> 1
>>

>> array = [1,2,3,4,5]
=> [1, 2, 3, 4, 5]
>> array.each { |num| puts num * 20 }           # Each iterator with num variable being yielded up!!
20
40
60
80
100                                             
=> [1, 2, 3, 4, 5]
>>

# It iterates thru the array, eachtime the value 1 will go up to num, 2 will go up to num, 3 will go up to num,
# ...etc assigning all values 1-5 to that |num| block variable, which we can then use in our code block to 
# * by 20!!!

# Before we learned about block variables, we were used to local variables:

x = 1   # local variable


# Local variables and block variables look very similar !!!

$variable    # Global
@@variable   # Class
@variable    # Instance
variable     # Local
variable     # Block

# They both dont have any symbols in front of them, the only hardcore difference is the scope of the variable.
# 

# Now that we are discussing blocks, we have a way to discover variable scopes and how it applies.

# Example:

=> [1 2 3 4 5]     # Local variable array
>> x = 1           # Local variable

# We call the block variable num from the previous example next:
>> puts num
# NameError: undefined local variable or method num for main:Object
        from (irb):132
        from /usr/bin/irb:12:in <main>

	# It says the variable num is undefined because its looking for a local variable, and num is a block variable.
	
# Block variables only exist inside the block, so we only have access to them inside the block, and thats
# what ruby means by variable scope!!! Because we have access to it inside the block, the block is its scope!
# We dont have access to it outside. Wht the previous example did, was it was using num in a temporary 
# sort of way and discarding it at the end because the block is done. No reason to store it after. 
	
# Thats variable scope in its simplest definition, but there also 3 VERY IMPORTANT points that we must also cover:	
	
	
     #-------------------
     # -  3 VERY IMPORTANT points about variable scope
     #-------------------

	
# 1. Even though we dont have access to our block variables in our local scope, we do have access to our local variables inside the blocks scope.
	
# To demonstrate this we simply call our local variable 'x' within the block variable
>> x = 1
=> 1
>> array.each {|num| puts num * 20 + x }    # call to our local variable 'x' within the block variable
21
41
61
81
101
=> [1, 2, 3, 4, 5]
>>
	

# 2. The second point is about different ruby versions outputting different results.

# Example:
>> puts num     # num is still undefined because weve only previously used it as a block variable.
NameError: undefined local variable or method num for main:Object
        from (irb):132
        from /usr/bin/irb:12:in <main>

# So lets define it.
>> num = 1                                    # Now its defined as a local variable
=> 1                                          # Output to confirm this action
>> array.each {|num| puts num * 20 + x }      # Lets try calling 
21
41
61
81
101
=> [1, 2, 3, 4, 5]
>> puts num
1
=> nil
>>

# Now that we have defined num as a local variable, and we perform a call to it, it should return 'num =1'
>> num
=> 1
>>

# if you get the number 5, what is happening is that old ruby versions bring in the local value of 'num = 1'
# for you to use inside the block, the same way that it brought in the local variable x above it brought in num.
# Even if we also declared it as a block variable, its as if we never had declared it as a block at all!!!! Its
# just making use of it the same way we made use of x. 

# If you receive a 1, as shown above, then that means your on a newer version of ruby, and it is outputting it 
# properly. It did not change the value, because num = 1. Starting at ruby version 1.9.1 it behaves differently.
# If we explicitly define it as a block variable, it prevents it from bringing into scope because it interprets
# it as "no I really mean, I want num to be a block variable!". The fact that weve defined it as a block variable, makes it only accessible as a block variable, 
 # and thats the true and honest way it should be.

# Ruby versions before 1.9.1 will have the old behavior. So BEWARE of the ruby version gobblins !!!!!!


# 3. The third point is that if you thought the first two points were confusing, 
# then you should really name your variables descriptive names to distinguish between local
# and block variables!!!!!


     #-------------------
     # - Common methods that use blocks
     #-------------------

find/detect
merge
collect
sort
inject

# The main thing that all of the above methods have in common is that theyre gonna take a code block. And that
# code block for everyone one of them is going to be a boolean expression. Code blocks dont have to be 
# necessarily made up of action statements like puts, or setting variables.


     #-------------------
     # -  FIND
     #-------------------

# Were going to learn how to use code blocks effectively with various ruby find methods to find data objects
# inside a dataset. There are 5 main find methods we will learn. 


# Simple example:
find/detect # find, with the synonym of detect
(1..10).find {|i| i == 5}  # inclusive range with the find method
                           # one line code block in curly braces declaring a block variable of 'i'
                           # Each number in the range will be put into 'i' as it iterates thru the set.
                           # Its not actually an iterator, but it works according to the same principals.
                           # Its gonna take each value and present it up to that block variable 'i'
                           # Boolean expression is i == 5
 (1..10).find {|i| i == 5}
=> 5
# It went thru the set and it stopped when the 'i' was equal to 5.

# More complex example:
>> (1..10).find {|i| i % 3 == 0 } 
=> 1                         
# Using the modulus % operator it divides i by 3, and returns the remainder
# If it divides evenly, the remainder is 0, what we are asking it is, what numbers are evenly divisible by 3?

>> (1..10).find {|i| i % 3 == 0}
=> 3
>>
# You see it returns the first value of what numbers are evenly divisible by 3. The imporatant thing 
# to note here is that it only returns the first one. Thats why find has the synonym for detect.

>> (1..10).detect {|i| i % 3 == 0}
=> 3
# This is the exact same thing, and says, look at the set, and detect the first one where this is true!!!

# Lets use detect again, but this time lets find out which numbers when multiplied by 3 are still 
# betwwen 1..10?

>> (1..10).detect {|i| (1..10).include?(i * 3) }  # If we * i * 3, is it still included in this set???
=> 1

# It reported 1, because 1 * 3 = 3 and its still in the set. It found the first case where that applied.
>> (1..10).detect {|i| (1..10).include?(i * 6) }
=> 1
>> (1..10).detect {|i| (1..10).include?(i * 9) }
=> 1
>> (1..10).detect {|i| (1..10).include?(i * 10) }
=> 1

# Find/Detect will always return a single object, or it will return nil / (empty array), when it doesnt apply.

>> (1..10).detect {|i| (1..10).include?(i * 11) }
=> nil

# Now instead of finding the first instance where its true (i * 3), what if want to find all?

>> (1..10).find_all {|i| (1..10).include?(i * 3) }
=> [1, 2, 3]                           # Returns an array of all numbers divisable by 3 upto 10

>> (1..100).find_all {|i| (1..100).include?(i * 3) }
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]                        # Returns an array of all numbers
                                       # divisable by 3 upto 100

>> (1..100).find_all {|i| (1..100).include?(i * 300) }
=> []                                  # If no nmbers are divisable, then it returns nil (empty array)!!


find/select # find, with the synonym of select

>> (1..10).select {|i| (1..10).include?(i * 3) }  # Find everything where this is true!
=> [1, 2, 3]                                      # 1,2, & 3 can all be * by 3, and still not exceed 10

any? <--- (Boolean)        # any question mark
>> (1..10).any? {|i| (1..10).include?(i * 3) }   # Are there any  in this set where this is true?     
=> true                                          # Dont return a value, return a "Boolean" (true or false)

all?        # all question mark
>> (1..10).all? {|i| (1..10).include?(i * 3) }   # Do all of these datasets meet this requirement?
=> false                                         # No, they dont!!

delete_if   # delete_if might not technically fall under the umbrella of find, but we are essentialy finding
            # something and deleting it all in one step.
>> (1..10).delete_if {|i| (1..10).include?(i * 3) }
NoMethodError: undefined method delete_if for 1..10:Range # Does not work with a range!!!
from (irb):180
from /usr/bin/irb:12:in <main>
	
# Turn range into an aray by replacing the ()'s with square brackets & the splat operator (*) to expand it
>> [*1..10].delete_if {|i| i  % 3 == 0 }
=> [1, 2, 4, 5, 7, 8, 10]

# Just because were using ranges, and arrays with very simple numbers to illustrate the point, doesnt mean
# you cant use more complex things. You can detect whether a string matches or not, whether a hash has a 
# certain value in it, any boolean, or any set of objects, where you can go thru the set looking for something
# you can apply these same methods to it. 

# Points to remember:

find/detect             # return Object or nil
find_all/select         # return array of items that match
any?                    # return boolean, either true or false
all?                    # like boolean, except they must all meet the requirement 
delete_if               # return an array with the items removed


     #-------------------
     # - MERGE  
     #-------------------

# Merge is another ruby method that makes good use of code blocks for merging hashes together. 
# Its only for hashes!!

>> h1 = { "a" => 111, "b" => 222 }

>> h2 = { "b" => 333, "c" => 444 }

>> h1.merge(h2)                           # h2 overwrites h1's "b" value !!!!!!!!!!!!!!!!
=> {"a"=>111, "b"=>333, "c"=>444}

# If they were conflicting keys (which there are), the values in h2 take precedence, 
# So basically, when you merge a hash with conflicting keys, the hash that is being merged with the original hash will overwrite the conflicting key value of the original hash being merged. 

# The opposite is true if you merge hashes the opposite way

>> h2.merge(h1)                           # h1 overwrites h2's "b" value !!!!!!!!!!!!!!!!
=> {"b"=>222, "c"=>444, "a"=>111}

# This is a great way to merge hashes, but it does not make use of code blocks. Lets adress that now.
>> h1.merge(h2)
=> {"a"=>111, "b"=>333, "c"=>444}

     #-------------------
     # - MERGE with code blocks | Blocks are for conflict resolution  
     #-------------------

# The block in the case of merge, is "ONLY" going to be called when theres a conflict between two keys.
>> h1 = { "a" => 111, "b" => 222 }
>> h2 = { "b" => 333, "c" => 444 }

>> h1.merge(h2) {|key, old, new| new }     # Were explicitly telling merge that the new value wins!!!!!
=> {"a"=>111, "b"=>333, "c"=>444}

>> h1.merge(h2) {|key, old, new| old }     # Were explicitly telling merge that the old value wins!!!!!
=> {"a"=>111, "b"=>222, "c"=>444}

# We get the same output as we did above on our regular h1.merge(h2) merge or seen below.
>> h1.merge(h2)
=> {"a"=>111, "b"=>333, "c"=>444}

# VALUES declared inside the block {} are explained below.

# There are 3 values going to be yielded up to us by merge, so we have to prepare for them. 
# So it makes sense to give them meaningful names.

# Ref: The Ruby Programming Language/ruby 1.9.3/ruby-doc.org/core-1.9.3/Hash.html#method-i-merge

                    {|key, old, new| new }
# merge(other_hash){|key, oldval, newval| block} → new_hash

# First 'key' one is the conflicting key
# Second 'old' is the old value, the one thats in h1 in this case
# Third 'new' will be the new value, the one thats about to be overwritten
# Fourth 'new' is set to new as a way to resolve which variable/value we wish to keep
# Fourth 'new' can also be set to old as seen below

>> h1.merge(h2) {|key, old, new| old }   # Switching it to old, you will see that we get the other behavior
=> {"a"=>111, "b"=>222, "c"=>444}

# With the current value of:
>> h1.merge(h2) {|key, old, new| old }
=> {"a"=>111, "b"=>222, "c"=>444}

# We can do something like 
>> h1.merge(h2) {|key, old, new| old + 1}      # Old value, the one thats in h1 in this case + 1
=> {"a"=>111, "b"=>223, "c"=>444}

>> h1.merge(h2) {|key, old, new| old * 5}      # Old value, the one thats in h1 in this case * 5
=> {"a"=>111, "b"=>1110, "c"=>444}

>> h1.merge(h2) {|key, old, new| old * 10}     # Old value, the one thats in h1 in this case * 10
=> {"a"=>111, "b"=>2220, "c"=>444}

>> h1.merge(h2) {|key, old, new| new }
=> {"a"=>111, "b"=>333, "c"=>444}
>> h1.merge(h2) {|key, old, new| new + 1}      # New value, the one thats about to be overwritten + 1
=> {"a"=>111, "b"=>334, "c"=>444}

# If no block is specified there will be no issue resoluton and default overwrite rules apply!
>> h1 = {"a"=>111, "b"=>222}
>> h2 = {"b"=>333, "c"=>444}

>> h1.merge(h2)
=> {"a"=>111, "b"=>333, "c"=>444}
# It returns a new hash containing the contents of h2 & the contents of h1.

>> h1.merge(h2) {|key, old, new| }             # If no block is specified there will be no issue resoluton!
=> {"a"=>111, "b"=>nil, "c"=>444}

# IF NO BLOCK is specified, the value 
# for entries with duplicate keys will be that of h2. Otherwise the value for
# each duplicate key is determined by calling the block with the key,
# its value in hsh and its value in other_hash.

>> h1 = {"a"=>111, "b"=>222}  # Just here as a visual aid, so you dont have to scroll up to see it (im lazy)!
>> h2 = {"b"=>333, "c"=>444}

# Long hand example with do 
>> h1.merge(h2) do |key, old, new|
?>     if old < new                  # If old is less than new
>>     old                           # Keep the old one
>>     else                          # Else return the new one 
?>       new
>>      end
>>   end
=> {"a"=>111, "b"=>222, "c"=>444}  # You will see that it picked h1's b222 because its lower than h2's b333

# Short more efficient obfuscated example:
>> h1.merge(h2) {|key,old,new| old < new ? old : new }
=> {"a"=>111, "b"=>222, "c"=>444}

# Shorter more obfuscated example:
>> h1.merge(h2) {|k,o,n| o < n ? o : n }
=> {"a"=>111, "b"=>222, "c"=>444}

# Shorthand example broken down
>> h1.merge(h2) {|k,o,n|          o < n              ? o            : n }      # ternary operator notation
# from back when we studied conditionals
#              Inline notation!!, old less than new, then return o, otherwise return n 

# We are saying, when there is a conflict, pick the one that has the lower value. 
# We dont care which is newer or older, we want to keep the one with the lowest value.

# Another point about merge is that it never changed our original h1 and h2 values:
>> h1 = {"a"=>111, "b"=>222}  # Just here as a visual aid, so you dont have to scroll up to see it (im lazy)!
>> h2 = {"b"=>333, "c"=>444}

# Changing the value with merge!
>> h1.merge(h2)
=> {"a"=>111, "b"=>333, "c"=>444}
>> h1
=> {"a"=>111, "b"=>222}
>> h1.merge!(h2)                          # Changing the value with merge!
=> {"a"=>111, "b"=>333, "c"=>444}
>> h1
=> {"a"=>111, "b"=>333, "c"=>444}
>> h2
=> {"b"=>333, "c"=>444}                  # h2 remains the same because we havent merge! it !!!

=begin
merge! adds the contents of h2 to h1. If no block is specified entries with duplicate keys are overwritten with the values from h2, otherwise
the value of each duplicate key is determined by calling the block with the key, its value in h1 and its value in h2. 

Tip 1: merge! means to permanently change this hash. merge!
Tip 2: We can also supply a block to merge!

Bottomline:

The block pretty much says, instead of me automatically deciding which one wins out, let me pass you those
variables and you decide, and in the end what I need you to give me back is the correct value. 
We can put something very complicated in the fourth value above 'new' or 'old', but ultimately we need to come
up with the value that will win out between the two hashes being merged.  
***The final value that we return out of the block should be whatever we want the new value to be.

Bottomline #2. What we are saying, hey merge, this is what I want you to do if you find a conflict. 
REMEMBER that block in the case or merge, is only going to be called when theres a conflict between two keys.
=end

     #-------------------
     # - COLLECT  
     #-------------------
# Next we look at the collect method, which also makes use of a code block.

# Collect has a synonym of map

# Collect/ map       # Its up to yu which one you want to use.
# You can use map to conserve space, keep it from wrapping around a line. The collect or map method works best 
# with:

# Arrays        # Used most often with arrays out of the 3

     #-------------------
     # - Collect method with Arrays
     #-------------------
>> array
=> [1, 2, 3, 4, 5]
>> array.collect {|i| i + 1 }     # block variable i declared within the code block
=> [2, 3, 4, 5, 6]                # Iterates thru the array, taking each item & passing it up to i
                                  # Then it does whatever we tell it to do within our code block <forrest gump
                                  # Applies that processing to it, then puts that value into a new array
>> array
=> [1, 2, 3, 4, 5]
>> array.collect {|i| i * 40 }    # Code blocks perform whatever processing you want done to each element (1-5)
=> [40, 80, 120, 160, 200]

>> ['apple', 'banana', 'orange'].map {|fruit| fruit.capitalize }
=> ["Apple", "Banana", "Orange"]
>> ['apple', 'banana', 'orange'].map {|fruit| fruit.capitalize if fruit == 'banana'}
=> [nil, "Banana", nil]

=begin
The above did not return apple or orange. This is a very important point that can confuse tons of people
when using collect / map. the above essentialy says, (if fruit == 'banana') then it capitalizes it. 
The (fruit.capitalize) is returning the value of fruit capitalized. But if not, 
then its returning no value at all.
=end

>> ['apple', 'banana', 'orange'].map do |fruit|
?>     if fruit == 'banana'                      # If fruit = banana
>>     fruit.capitalize                          # Capitalize it
>>     else                                      # If it does not
?>       fruit                                   # Return the value of fruit
>>     end                                       # end loop
>>   end                                         # end loop
=> ["apple", "Banana", "orange"]

# You have to be explicit about which values you want returned. Whatever value comes out of your processing (fruit.capitalize if fruit == 'banana'}) is whats going to be put into the
# returned array. # got it, good!!!!!

# The value of (fruit.capitalize if fruit == 'banana'}) when it iterated thru apple or orange was not = to banana so it could not capitalize and returned nil.

# Ok, that makes sense, so why didnt it just return an array with the value "Banana" only?  

     #-------------------
     # - Tip 1 to REMEMBER
     #-------------------

# You want to always keep in mind that the number of items that go into collect = number of items out !!!!!
# For example, if you have 10 items going into collect, but only have processing/logic on 4 of them, 10 items will be returned, but with 4 values, and 6 nil's. Got it, good!!!!!

     #-------------------
     # - Tip 2 to REMEMBER
     #-------------------

# Another important thing to remember about collect is that even though it works with hashes, arrays, and ranges
# IT ALWAYS returns/converts them to an array!!!!!!!!!!!!!!!!!!!!!!

# Range with the collect method
>> (1..20).collect {|num| num * 20}
=> [20, 40, 60, 80, 100, 120, 140, 160, 180, 200, 220, 240, 260, 280, 300, 320, 340, 360, 380, 400]

# Hash with the collect method
>> hash = {"a" => 111, "b" => 222, "c" => 333}
=> {"a"=>111, "b"=>222, "c"=>333}
>> hash.map {|k,v| k }              # Remember that hashes return two values, the key and value!!!
=> ["a", "b", "c"]
>> hash.keys                        # This is the same thing as the above code block           
=> ["a", "b", "c"]

>> hash.map {|k,v| v }
=> [111, 222, 333]
>> hash.map {|k,v| v * 20}
=> [2220, 4440, 6660]

# Display key name and value * 20!
>> hash.map {|k,v| "#{k}: #{v * 20}" }
=> ["a: 2220", "b: 4440", "c: 6660"]

     #-------------------
     # - Tip 3 to REMEMBER
     #-------------------

# Remember that the output value, and return value are two different things in ruby. 
# Using puts with collect will output as expected, but it will empty out the array and its return value.
>> ['apple', 'banana', 'orange'].map {|fruit| puts fruit.capitalize }
Apple                                # <-----------Output value
Banana                               # <-----------Output value
Orange                               # <-----------Output value
=> [nil, nil, nil]                   # <-----------Return value

# To confirm we have this example:
>> new_array = ['apple', 'banana', 'orange'].map {|fruit| puts fruit.capitalize }
Apple
Banana
Orange
=> [nil, nil, nil]
>> new_array
=> [nil, nil, nil]

# The correct way to output is to NOT use puts, and just report the value back.
>> new_array = ['apple', 'banana', 'orange'].map {|fruit| fruit.capitalize }
=> ["Apple", "Banana", "Orange"]
>> new_array
=> ["Apple", "Banana", "Orange"]

     #-------------------
     # - Tip 4 to REMEMBER
     #-------------------
# Collect / map have exclamation mark functions just like merge. 
# collect! & map! invoke the block once for each element of self, replacing the element with the value returned by block. It will transform the array that were working with, 
# so that the processing is applied in place & actually replaces the values instead of giving a new array

# Collect and map are really powerful ways to take an array and apply a transformation to all the 
# elements in the array. It can be very useful when doing data processing. It will take every item and 
# apply the same transformation to it. Just keep in mind the 4 pitfalls discussed as well !!!!!!!!!!!!!!!!!!


     #-------------------
     # - SORT
     #-------------------

# The sort method also makes use of a code block. In the code blocks we have used in the past we have 
# put booleans, and conditional statements in our code blocks to determine whether a certain value 
# should be returned or weve returned the value thats the result of some sort of transformation or processing
# that weve done. With sort, were going to provide a comparison. 

     #-------------------
     # - Comparison Operator
     #-------------------
<=>    # spaceship operator

# We use it to compare two values:
?>   q = 1000
=> 1000
>> e = 2000
=> 2000
>> q <=> e                     # Comparing the two q + e values
=> -1                          # -1 Means its "Less Than"
>> e <=> q
=> 1                           # 1 Means its "More Than"
>> q =2000
=> 2000
>> e <=> q
=> 0                          # 0 Means their "Equal"

# As seen above, comparison operators can be similar to a boolean which returns only true or false. 
# But it is much better than a boolean because it returns -1, 0 or 1 numbers. 
-1 Less than
0  Equal
1  More Than

# The above examples are very simple and dont illustrate the use of comparison operators with sort.


     #-------------------
     # - Comparison Operators with sort
     #-------------------

# When using sort, sort uses comparison operators to decide which way the values have to go in the sort.
   
   +---------------+--------------+
   |-1 | Less than | Moves "left" |
   --------------------------------
   | 0 | Equal     | Stays        |
   --------------------------------          # 04. Code blocks sort.mov @ 01:30
   | 1 | More Than | Moves "right"|
   +---------------+--------------+

# Arrays with the sort operator
    
# Arrays are always maintained in order, thats the nature of an array, its an ordered set until we run the sort  # function thru it.
>> array
=> [3, 1, 5, 2, 4]

# The code block is going to have a couple of things declared as block variables.

>> array.sort {|v1, v2| v1 <=> v2 }  # sort will send us each of these values in turn for the comparison
=> [1, 2, 3, 4, 5]

# What the code block is doing, and more specifically what the v1 is doing is, yielding up the first 2 values
# 3, and 1. When those values come up to the sort block it says "when I do my comparison 3 is > than 1 so 
# 3 should move to the right, and 1 will move to the left. That will place all values closer to the correct sort otder. Ruby is not going thru each of these individually, it makes use of a
# more advanced algorithm, but this simply describes the behavior of whats happening.

# Running array.sort returns the same output.
>> array.sort                                  # sorts default behavior is to sort from least-gretest
=> [1, 2, 3, 4, 5]

# So why did we use a code bock then? We used a code block so that we could add extra complexity to our dataset
# and change the behavior.

# Reverse sorting
>> array.sort {|v1, v2| v2 <=> v1 }
=> [5, 4, 3, 2, 1]                                                                                                                  

# Same effect
>> array.sort.reverse
=> [5, 4, 3, 2, 1]

# Also 
>> array.reverse
=> [4, 2, 5, 1, 3]

# Heres what I mean by adding extra complexity
?>   fruits = ["banana", "apple", "orange", "pear" ]
=> ["banana", "apple", "orange", "pear"]
>> fruits.sort                                     # sort places string values in alphabetical order by default
=> ["apple", "banana", "orange", "pear"]

# If we wanted to sort by the length of the string 
?>   fruits.sort {|fruit1,fruit2| fruit1.length <=> fruit2.length} # fruit1 length vs fruit2 length
=> ["pear", "apple", "banana", "orange"]

# Switch
>> fruits.sort {|fruit1,fruit2| fruit2.length <=> fruit1.length}
=> ["banana", "orange", "apple", "pear"]
>> fruits.sort {|fruit1,fruit2| fruit1.length <=> fruit2.length}.reverse
=> ["banana", "orange", "apple", "pear"]

# An faster/easier method for sorting by one property is sort_by
>> fruits.sort_by {|fruit| fruit.length}
=> ["pear", "apple", "orange", "banana"]

# sort_by says go to the block and get the value I should use for a comparison, the comparison is internal to sort_by (fruit.length)

# To further illustrate the point
>> fruits.sort_by {|fruit| fruit.reverse}
=> ["banana", "orange", "apple", "pear"]

# This says, go to each one, reverse the characters, & sort if based on the words backwards - forwards
# Letter for letter!!!!

     #-------------------
     # - Important note to keep in mind
     #-------------------

=begin
Theres also an exclamation point version like merge, and collect for sort!
Sorts self. Comparisons for the sort will be done using the <=> operator or using an optional code block. The block implements a comparison between a and b, returning -1, 0, or +1. See
also Enumerable#sort_by. sort! changes the values permanently!!!!!!!!!!!!!!
=end

>> fruits.sort! {|fruit1,fruit2| fruit1.length <=> fruit2.length} # sort! changes the values permanently!!
=> ["pear", "apple", "orange", "banana"]
>> fruits
=> ["pear", "apple", "orange", "banana"]                 


# The last thing I want to show you
# Typically arrays are what we would sort, but we can also sort hashes
# Ruby turns a hash into an array in order to sort it. 
>> hash
=> {"c"=>222, "a"=>555, "d"=>111, "b"=>333}
>> hash.to_a                                           # hash to array
=> [["c", 222], ["a", 555], ["d", 111], ["b", 333]]

# Changes it to an array, its no longer an array, this is very important !!

>> hash.to_a.sort                                      # hash to array then sort it
=> [["a", 555], ["b", 333], ["c", 222], ["d", 111]]

# Now when we talk to the code block, the first one will be item "a" compared with item "b"!!! 
# If we just compare the items themselves, unless the keys and values are the same, which 
# is not possible in a hash because the key cant be the same because they would replace eachother!!

# The following array's have only two elements, they have keys, and values because they were converted from 
# a hash to an array.

# Sorts according to their keys a,b,c,d
>> hash.sort {|item1,item2| item1[0] <=> item2[0] }   # look inside item1="a" @ index0, item2="b" @ index0, 
=> [["a", 555], ["b", 333], ["c", 222], ["d", 111]]   # We *HAVE to input the index # because we are dealing
                                                      # with arrays positioning, and getting information from them
# Sorts according to their values
>> hash.sort {|item1,item2| item1[1] <=> item2[1] }
=> [["d", 111], ["c", 222], ["b", 333], ["a", 555]]

# In the coce block, you cant talk to it like a hash anymore, it doesnt have it key/value pair.
# Now they are to be addressed as arrays!!!!


     #-------------------
     # - INJECT
     #-------------------

=begin
Inject is another ruby method that makes good use of code blocks. Inject is an acumulator.
When you see inject, immediately think accumulate!!! If were gonna accumulate values, were gonna need somewhere to accumulate them to right, so were gonna need variables. 

Well have a block variable that'll do our accumulating for us. By convention, that block variable is called memo

Its helpful before going into inject, to quickly go back and look at collect for a second.
=end

>> (1..10).collect{|n| n * 20 }
=> [20, 40, 60, 80, 100, 120, 140, 160, 180, 200]

# A 1-10 range using the collect method with a block, & it would apply that block as a transformation
# to each one of the elements. 

# With inject were going to be doing the same kind of thing, but were going to be taking that value,  
# and accumulating it eachtime and were going to be storing it in memo or // block variable (;
# so thats the difference between inject and collect. So know we can look at inject

     #-------------------
     # - INJECT / Lets try this again {;
     #-------------------

>>   (1..10).inject {|memo, n | memo + n }
=> 55

# 1-10, were using the inject method followed by a code block, & memo is declared as being the accumulator
# and the n variable is where eachone of the elements will be yielded up so that we can use it in our block,
# just how we did with collect. So know our block needs to tell it how it should do the accumulation, 
# and the end result of whatever we put in there, its whats going to be stored in memo. SO if we just put the 
# number 1 there, then it doesnt matter how many elements at the end, memo is = to 1. Because eachtime
# it looped thru, we just said 1, 1, 1, 1 ..etc. 

# this example just shows a simple sum of all the numbers, so eachtime its gonna go thru, its gonna
# take whatever value it had previously and add the next number to it and then store that in memo, 
# take the next value and so on.. 

     #-------------------
     # - Here is a visual example
     #-------------------


memo = 1                       # memo is = to 1, becase it takes the first value as it initialization value
memo = memo + 2                # next is memo = memo + 2 which is 3 store it in memo, ....  so on and so forth
memo = memo + 3
memo = memo + 4
memo = memo + 5
memo = memo + 6
memo = memo + 7
memo = memo + 8
memo = memo + 9
memo = memo + 10


     #-------------------
     # - Quick array of 1-10 with the splat operator
     #-------------------

>> array = [*1..10]                 
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

>> sum = array.inject {|memo, n| memo + n } # storing the resulting value in memo automatically
=> 55                                       
# memo + n tells it to use its old value memo, the results of this will be stored in the new memo value 
# that will be passed to the next loop. 

# Sure enough if you add up all the numbers you end up with 55. // 06 Methods // Inject.mov 03:20

# The first time thru, memo gets set to 1 automatically. The block doesnt get applied the first time until 
# it gets to 2. That is the default behavior if we dont set 1 to another value.

     #-------------------
     # - Set a value other than 1
     #-------------------

>> sum = array.inject(100) {|memo, n| memo + n} # starting/initialization value is provided in ()'s
=> 155

# So now the first time thru, memo will be = to 100 and the first number it adds to it will be 1 on the first
# iteration. Before, when we provided no starting/initialization value above its first iteration was started at 2.  

# We are not limited to just addition otherwise we would just call it sum. 04:14

     #-------------------
     # - Multiply
     #-------------------

>> product = array.inject {|memo, n| memo * n}                 # give us the product of 1..10 *'d together
=> 3628800

# We could also give it a starting value of 2, now it will be that same number * 2. It starts out with a value
# of 2, then it does all its multiplication. 
>> product = array.inject(2) {|memo, n| memo * n}
=> 7257600


     #-------------------
     # - Important note
     #-------------------

# Just how when we were working with the collect method. We want to be careful of the value that gets returned 
# here. You want to make sure that its always really the value that you want to store in memo. So, whatever
# comes out of this, the resulting return value is what you want.

 >> sum = array.inject {|memo, n| memo + n if n != 3}  # + n if n is not = to 3
: undefined method + for nil:NilClass
        from (irb):448:in block in irb_binding
        from (irb):448:in each
        from (irb):448:in inject
	
# The error is saying that it tried to use + when we had a nil value. You cant add something to nil.
# What happened is that it looped thru, and when it got to the 3, it said, ooh, n IS = to 3 so im not 
# going to run "memo + n" at all. So none of this statement is taking place "memo + n if n != 3", and 
# the resulting value is nil and nil is what gets stored in memo.
	
# So thats the end rseult, it puts nil aside, and the next loop it tries to add nil to every element in the sequence.
	
# SO just be careful that the return value is indeed the one you wish to store at the end of that iteration.
	
     #-------------------
     # - Another example that ususally confuses people when working with inject
     #-------------------
	
# This is similar to when we covered the collect method.
>> sum = array.inject {|memo, n| puts memo + n}          # add output inside code block
3
NoMethodError: undefined method + for nil:NilClass
        from (irb):449:in block in irb_binding
        from (irb):449:in each
        from (irb):449:in inject

# We get the same kind of error because the return value of "puts memo + n" is nil, same rules for nil 
# apply here

     #-------------------
     # - Important note
     #-------------------
	
# Nil is not the same as zero. 
	
	
# One way to workaround the error, if you really want to "puts memo + n" its
# probably better to use an each method and use it that way. But if were realy tring to accumulate we can simply
# apply the final value to memo for example. 
	
>> sum = array.inject {|memo, n| puts memo + n; memo}    # the semicolon lets use put it all on the same line
3                                                        # thats the one time we CAN use semicolins in ruby
4
5
6
7
8
9
10
11
=> 1
	
# Now it does output results everytime without giving us an error. But what its actually doing is setting memo to 1 everytime because it started out as one.  So it puts 1 + 2 which is 3,
# then it says your return value is one, so it sets memo = 1. The overall point is just to be aware that 
# the result pf all of this "puts memo + n; memo" is whats going to be stored in memo for the next iteration.
# 

     #-------------------
     # - More exotic example to help solidify the concept 
     #-------------------

>> fruits = ['apple', 'pear', 'banana', 'plum'] 
=> ["apple", "pear", "banana", "plum"]

# Right off the bat you might think that you cant use inject with an array thats made up with strings like this
# We actually can, all were doing is storing values for the next round. Thats all it is, were storing a value, 
# and each time we go thru that well then use in the future.

>> longest_word = fruits.inject do |memo, fruit|
?>     if memo.length > fruit.length             # if the length of what was stored before is greater
>>     memo                                      # 
than the length of whatever were looking at now
                                                 # if memo is greater, we want to keep memo
>>     else                                      # if not, means that fruit was longer
?>       fruit                                   # and we will store/save the fruit value
>>     end                                       # so eachtime were just saving the string
>>   end                                         # It goes thru each word & does a comparison
=> "banana"                                      # Banana was the winner because it had the longest length

# 05 Inject.mov 08:32


#--------------------------------------
     '#5 METHODS'  
#--------------------------------------

     #-------------------
     # - what is a method? 
     #-------------------
     
# Methods are what allows us to play with our data, as an example:
>> "Hello".reverse.capitalize
=> "Olleh"

# The above are called object methods or standalone methods. We will discuss class methods in the next section.

# Creating a method is easy,

def method_man                               # Def is short for define
  puts "Member of the WU-TANG KILLA BEES"
end

# Now, when anybody does a method call to method_man, they will execute the code in the code block 
>> method_man
Member of the WU-TANG KILLA BEES
=> nil
>>

# The reason methods are so useful is because we can create our own methods, and place complex code inside them and call all of that complexity with a simple method call.


     #-------------------
     # - Important Tip 
     #-------------------

# Methods can have question marks at the end like:
def over_five?                                      # Run a test or return a boolean testcase
  value = 3
  puts value > 5 ? 'Over 5' : 'Not over 5'


     #-------------------
     # - Important Tip 
     #-------------------

# Methods must be defined before calling them, obviously huh :)
  

  
     #-------------------
     # - Variable scope in methods 
     #-------------------

# Method names and local variables look the same so make sure you name them clearly to distinguish.  
  
  
     #-------------------
     # - Arguments 
     #-------------------
  
# Comma separated list of values that are passed into methods
# The values are passed in when they are called. We dont have to worry if they all have been set. 
# In order for args to work, we need a local variable to catch the values as theyre passed in to the method.
# With arguments, you dont have to worry about variable scope in methods.
# Arguments give the real power and flexability to ruby methods. 
  
# Methods with arguments typically use ()'s
# Methods without arguments typically do not
# Parenthesis are optional in both cases
def welcome(name)
	puts "Hello #{name}!"
end

def add(n1, n2)
	puts n1 + n2
end

def longest_word(words)
  longest_word = words.inject do |memo,word|
    memo.length > word.length ? memo : word
  end
  puts longest_word
end

def over_five?(value)
	puts value > 5 ? 'Over 5' : 'Not over 5'
end

welcome("Mary")
welcome("Larry")
# paretheses can also be omitted when calling 
# methods with arguments
welcome "Fred"

add(2, 2)

fruits = ['apple', 'pear', 'banana', 'plum']
longest_word(fruits)

over_five?(8)
over_five?(112 / 18)
  
  
     #-------------------
     # - Using Argument default values to help avoid runtime errors 
     #------------------- 
  
def welcome(name="Kriztina")
	puts "Hello #{name}!"
end

# Empty Arrays
def longest_word(words=[])   # Says, if you dont get an array, set yourself to an empty array

def over_five?(value=nil)    # Says, if you dont get a value, dont raise an error, just set it to nil
puts value.to_i > 5 ? 'Over 5' : 'Not over 5' # Convert nil to an interger, 0 !> 5


     #-------------------
     # - Return value 
     #-------------------

# We saw how we can use arguments to get values into our methods. 


     #-------------------
     # - Operators are also methods 
     #-------------------


#--------------------------------------
     '#6 CLASSES'  
#--------------------------------------

     #-------------------
     # - Defining and using Classes and creating objects
     #-------------------
     
=begin     
Classes are the backbone of object oriented programming. They define objects, what an object is, and they 
define what an object can do. Weve been working with pre-defined ruby objects in the past. Now we are getting into programming our own classes, that will define our own objects. 
     
Defining a class is simple:     
=end
     
class NmapScannerModule
  xyz
end

     #-------------------
     # - Naming convention | Methods vs. Classes 
     #-------------------

# One huge difference between classes and method naming structure, is that methods take lower_case separated by # underscores, and classes take CamelCase, where it begins with a capitol
# letter, and every other first letter in a word capitalized
     
     #-------------------
     # - Benefits of using Classes 
     #-------------------

# Classes will:
# * Group the code into discreet, well-categorized areas
# * Make the code easier to work with
# * Allow complex behaviors using very simple statements
# * Our objects all correspond to real world objects
# * Wrap custom methods inside our classes

     #-------------------
     # - Create a Class with a method in it 
     #-------------------

>> class Animal
>>   def make_noise
>>     "Moo!"
>>     end
>>   end
=> nil
>> Animal.new
=> #<Animal:0x0000000090ec50>
>> animal = Animal.new
=> #<Animal:0x00000000ddce80>
>> animal
=> #<Animal:0x00000000ddce80>
>> make_noise
NameError: undefined local variable or method make_noise for main:Object
        from (irb):53
        from /usr/bin/irb:12:in <main>
>> animal.make_noise
=> "Moo!"
>> animal.make_noise.upcase
=> "MOO!"
>> animal.make_noise.reverse
=> "!ooM"
>> Animal.make_noise

     #-------------------
     # - Important tip 
     #-------------------

NoMethodError: undefined method make_noise for Animal:Class
        from (irb):61
        from /usr/bin/irb:12:in <main>

# The following code results in an error. Well discuss why in detail later. But pretty much its because,
# we have to have that object created from the class, then we could tell that object to do things.


     #-------------------
     # - Class Instances 
     #-------------------

# Instances are a fundamental concept of OO programming, and essential when working with classes.

# An instance is also an ocurrence of our class or:
	An object created from a class

# For example:
>> class Animal
>>   def make_noise
>>     "Moo!"
>>     end
>>   end
=> nil
>> Animal.new                     # <-- We created an instance of the class Animal
=> #<Animal:0x0000000090ec50>
>> animal = Animal.new            # <-- And then we assigned it to a variable
=> #<Animal:0x00000000ddce80>
>> animal
=> #<Animal:0x00000000ddce80>
	
# Second example:
class Animal
  def make_noise
    "Moo!"
  end
end

animal1 = Animal.new              # <-- Instance of Animal class with "Animal.new"
puts animal1.make_noise            # <-- And then we assigned it to the animal variable

animal2 = Animal.new              # <-- 2nd instance of Animal class with "Animal.new"
puts animal2.make_noise            # Tell Animal2 to make noise


     #-------------------
     # - Important note 
     #-------------------

=begin
Both of these instances are going to do, and return the same thing. But the importnt thing 
about instances is that they are not the same. They are two separate objects!!!

EVERY time we call "Animal.new" we get back a new, and different instance/object. 
Its a lot like the memo pads, where you pull off a seperate page for every new message. Each message/page is different, but they all came from the same place. The memo pad is like the
class, it has all the definitions for it, it has all those blank spaces filled in, it pre-defines
how you can take a message, but each and every time we pull it off, we make a new instance of it, 
and we fill it out differently with different information with each call.

So how do we fill out the blanks on these forms, how do we tell our animals apart, so that 
different animals make different noises, different names, different numbers of legs... etc

In order to do that we :
 * Put variables inside of our class definitions to hold those attributes
 
=end


     #-------------------
     # - Class Attributes 
     #-------------------

=begin
Attributes are how we can differentiate between instances. For example, if we have a class listing different vulnerabilities, we have to have some way to differentiate between them all.
Thats where attributes all come into play. 

Going back to the previous memo pad example:

The attributes are the blanks on the forms that were going to fill out with different values.

What were really talking about when dealing with attributes are:

Attribute:
A value that persists inside of an instance, and for that were going to need a variable.
A variable that can store those values, and can keep them around inside the instance.

Ruby has a variable made especially for this purpose:
=end

Global    $variable
Class     @@variable
Instance  @variable
Local     variable
Block     variable

# Instance variables are used to store the attributes inside of our instances.


     #-------------------
     # - Adding a noise attribute to our Animal class 
     #-------------------

class Animal
  def make_noise
    @noise                        # Calling an attribute is as easy calling for the variable value
                                  # The ? is how do we set the variable, so we can call/return it
  end
end

animal1 = Animal.new              # <-- Instance of Animal class with "Animal.new"
animal1.noise = "Moo!"
puts animal1.make_noise            # <-- And then we assigned it to the animal variable

animal2 = Animal.new              # <-- 2nd instance of Animal class with "Animal.new"
puts animal2.make_noise            # Tell Animal2 to make noise


     #-------------------
     # - IMPORTANT Lesson !!!!!!!!! 
     #-------------------

# Running the above code will yield the following error:

./animal_class.rb 
./animal_class.rb:11:in <main>: undefined method noise= for #<Animal:0x000000015647e8> (NoMethodError)

# This error indicates a very important point about ruby that states: 
# You NEVER have access to instance variables from outside of the instance. They are locked away inside of the instance, where we cant set nor retrieve them! 

# Now wait a minute your thinking, we cant retrieve it, thats exactly what were doing when we say,
# make_noise. Well thats because we CAN access the methods that are inside the class, and the methods 
# have access to the instance variable. The scope of an instance variable is inside all of the 
# methods of the instance but not outside the instance. So if we want to get to those values of the 
# instance variable, we have to use methods. 

#!/usr/bin/env ruby

class Animal
   def set_noise(noise)           # Set an instance that will set it for us
     @noise = noise               # This does not allow the flexability that we want, but it will soon
   end
     
  def make_noise
    @noise                        # Calling an attribute is as easy calling for the variable value
  end                             # The ? is how do we set the variable, so we can call/return it
end

animal1 = Animal.new              # <-- Instance of Animal class with "Animal.new"
animal1.set_noise("Moo!")         # method call to set_noise
# animal1.noise = "Moo!"          # Instead of using this line that wont work, see set_noise above !!!!
puts animal1.make_noise           # <-- And then we assigned it to the animal variable

animal2 = Animal.new              # <-- 2nd instance of Animal class with "Animal.new"
animal2.set_noise("Quack!")
puts animal2.make_noise           # Tell Animal2 to make noise

# We now have two different instances (animal1, animal2) with an attribute that we have access to!

# >> Moo!
# >> Quack!

# Next couplple of movies I will show you how to get, and set these attributes more in-depth, as well
# as show some shortcuts.


    #-------------------
    # - Reader/Writer Methods to make the process easier and shorter with syntactic sugar !!!!!
    #-------------------

# In our previous tutorial, we showed how we can access our instance variables using methods.
# We will explore those ideas a bit further by exploring reader, and writer methods.

#!/usr/bin/env ruby

class Animal
   def noise=(noise)              # Set a set instance that will set it for us (SET METHOD)
     @noise = noise               # This does not allow the flexability that we want, but it will soon
   end
     
  def noise                       # Set a get instance that will set it for us (GET METHOD)
    @noise                        # Calling an attribute is as easy calling for the variable value
  end                             # The ? is how do we set the variable, so we can call/return it
end

animal1 = Animal.new              # <-- Instance of Animal class with "Animal.new"
animal1.noise = "Moo!"            # method call to set_noise
puts animal1.noise                # <-- And then we assigned it to the animal variable

animal2 = Animal.new              # <-- 2nd instance of Animal class with "Animal.new"
animal2.noise = "Quack!"
puts animal2.noise                # Tell Animal2 to make noise

# We now have two different instances (animal1, animal2) with an attribute that we have access to!

# >> Moo!
# >> Quack!

# Weve seen how we can use reader/writer methods in order to access our attributes. 
# We have also seen how to use ruby's syntactic sugar to make the process a bit easier.
# Well, what if I have a huge-complex class with tons of atttributes,
# do I have to go in there and write a reader/writer method for each of them????

# No you dont:


    #-------------------
    # - Attribute Methods 
    #-------------------

# This is done so often that you can simply use an attribute method.

attr_* methods    # They always start with attr

# We will look at the following methods:

attr_reader                  # creates a reader/GET method
attr_writer                  # creates a writer/SET method
attr_accessor                # creates both a reader/writer/SET/GET method

# Each method above is put into our class and when its called, it takes a symbol that we provide after
# and it turns it into a method for us that we can then use. So its exactly the same thing as if we 
# typed it out the long way. 

# attr_writer creates:
attr_writer :name
def name=(value)
 @name = value
end


# When we need to read/write. we should use
attr_accessor :name

def name
  @name
end

def name=(value)
  @name = value
end

# It literally creates two methods for us, and SAVES us a whole mess of typing:
   def noise=(noise)              # Set a set instance that will set it for us (SET METHOD)
     @noise = noise               # This does not allow the flexability that we want, but it will soon
   end
     
  def noise                       # Set a get instance that will set it for us (GET METHOD)
    @noise                        # Calling an attribute is as easy calling for the variable value
  end                             # The ? is how do we set the variable, so we can call/return it
end


# But what if I want to create more than 1:
# Simply use a comma and add as many as you wish.

attr_accessor :name1, :name2, :name3,:name4, :name5


    #-------------------
    # - New and imporved Class.rb utilizing newly found attr_accessor !!! 
    #-------------------

#!/usr/bin/env ruby

class Animal
  attr_accessor :name             # creates a SET/GET instance variable @name
  attr_accessor :color            # creates a SET/GET instance variable @color
  attr_accessor :legs, :arms      # creates a SET/GET instance variable @color
  
   def noise=(noise)              # Set a SET/Write instance that will set it for us (SET METHOD)
     @noise = noise               
   end
     
  def noise                       # Set a GET/Read instance that will set it for us (GET METHOD)
    @noise                        # Calling an attribute is as easy calling for the variable value
  end                             # The ? is how do we set the variable, so we can call/return it
end

animal1 = Animal.new              # <-- Instance of Animal class with "Animal.new"
animal1.noise = "Moo!"            # method call to set_noise
animal1.name = "Delici"           # Write to the name attribute of animal1
puts animal1.name                 # Read from the name attribute of animal1
animal1.color = "golden"          # Write to the color attribute of animal1
puts animal1.color                # Read from the color attribute of animal1
animal1.legs = 4                  # Set animal limbs = 4
puts animal1.legs                 # print out animal limb number
puts animal1.noise                # <-- And then we assigned it to the animal variable

animal2 = Animal.new              # <-- 2nd instance of Animal class with "Animal.new"
animal2.noise = "Quack!"
puts animal2.noise                # Tell Animal2 to make noise

# We now have two different instances (animal1, animal2) with an attribute that we have access to!

# >> Moo!
# >> Quack!


    #-------------------
    # - Initialize Methods 
    #-------------------

# Now we want that instance to set some initialization, setting some default values, & or calling some
# default methods. 

# Initialize works just like a normal method, the only difference is that its called automatically,
# and values we pass into new, get passed onto initialize

#!/usr/bin/env ruby

class Animal
  attr_accessor :name             # creates a SET/GET instance variable @name
  attr_writer   :color            # creates a SET instance variable @color
  attr_reader   :legs, :arms      # creates a GET instance variable @legs, and @arms
  
   def initialize(noise, legs=4, arms=0) # set default values to help avoid errors on animal2!
     @noise = noise
     @legs = legs
     @arms = arms
     puts "A new animal has been instantiated!"
   end
   
   def noise=(noise)              # Set a SET/Write instance that will set it for us (SET METHOD)
     @noise = noise               
   end
     
  def noise                       # Set a GET/Read instance that will set it for us (GET METHOD)
    @noise                        # Calling an attribute is as easy calling for the variable value
  end                             # The ? is how do we set the variable, so we can call/return it

def color
  "The color is #{@color}!"
  end

animal1 = Animal.new("Moo!", 4, 0)   # <-- Instance of Animal class with "Animal.new"
animal1.name = "Delici"              # Write to the name attribute   of animal1
puts animal1.name                    # Read from the name attribute of animal1
animal1.color = "black"              # Write to the color attribute of animal1
puts animal1.color                   # Read from the color attribute of animal1 //should error out
puts animal1.legs                 
puts animal1.noise                   # <-- And then we assigned it to the animal variable

animal2 = Animal.new("Quack!")       # <-- 2nd instance of Animal class with "Animal.new"
puts animal2.noise                   # Tell Animal2 to make noise

end

    #-------------------
    # - Class Methods 
    #-------------------

# So far we have created instances of our classes (instance methods), and weve been calling methods 
# on that instance. But we can also call methods directly on the class itself.
# Those are called Class Methods.

# Class method = A method that can be called on a class, even without an instance of the class.

Animal.new # .new is a builtin class method for every ruby object
           # So when we call .new it returns a new instance to us
           # But its still a method, its a method that exists on the class even when we dont have an
           # instance. Ans that is what were going to use class methods for.

# Were going to use class methods when we want the class to do something for us, even when there is no 
# instance in sight. It doesnt matter, maybe there are instances, maybe there arent, 
# it doesnt really matter!

    #-------------------
    # - Defining Class Methods 
    #-------------------

# Its very easy to define a class method, its the same way as instance methods, except we put the self
# keyword in front.

def self.method_name   # "self.method_name" lets us know that its a class method
  xyz                  # It is something that our class itself will execute!
end                    


    #-------------------
    # - Important tip 
    #-------------------

# The self keyword in ruby applies to whatever object were currently in.So in the above case, where were in the definition of the class, self is the class itself!!!


# Examples are easier to help you visualize the concepts:::

    #-------------------
    # - Lets add a Class Method to our Animal class
    #-------------------

#!/usr/bin/env ruby

class Animal
  attr_accessor :name             # creates a SET/GET instance variable @name
  attr_writer   :color            # creates a SET instance variable @color
  attr_reader   :legs, :arms      # creates a GET instance variable @legs, and @arms
  
  # You can place a class method anywhere in the file you wish.
  # Typically youll place the class methods above the instance methods
  def self.all_species            # this will return a complete list of all species this class knows about
  ['cat', 'cow', 'dog', 'duck', 'hosrse', 'pig'] # Ask the class, & it doesnt have to have an instance
                                                 # the class itself can tell us
  end
  
   def initialize(noise, legs=4, arms=0) # set default values to help avoid errors on animal2!
     @noise = noise
     @legs = legs
     @arms = arms
     puts "A new animal has been instantiated!"
   end
   
   def noise=(noise)              # Set a SET/Write instance that will set it for us (SET METHOD)
     @noise = noise               
   end
     
  def noise                       # Set a GET/Read instance that will set it for us (GET METHOD)
    @noise                        # Calling an attribute is as easy calling for the variable value
  end                             # The ? is how do we set the variable, so we can call/return it

def color
  "The color is #{@color}!"
  end

puts Animal.all_species.inspect
  
animal1 = Animal.new("Moo!", 4, 0)   # <-- Instance of Animal class with "Animal.new"
animal1.name = "Delici"              # Write to the name attribute   of animal1
puts animal1.name                    # Read from the name attribute of animal1
animal1.color = "black"              # Write to the color attribute of animal1
puts animal1.color                   # Read from the color attribute of animal1 //should error out
puts animal1.legs                  
puts animal1.noise                   # <-- And then we assigned it to the animal variable

animal2 = Animal.new("Quack!")    # <-- 2nd instance of Animal class with "Animal.new"
puts animal2.noise                # Tell Animal2 to make noise

end

[qub!t@nanoxzvvyxvk lynda.com]$ .classes.rb
> ["cat", "cow", "dog", "duck", "hosrse", "pig"]
> A new animal has been instantiated!
> Delici
> The color is black!
> 4
> Moo!
> A new animal has been instantiated!
> Quack!


    #-------------------
    # - 4 Important points to make a note of !!!
    #-------------------

1. We didnt have an instance when we called Animal.all_species.inspect !
2. We called it directly on the class !
3. The kind of information we returned was general info about the class itself !
4. As noted earlier, .new is an example of a class method. We can create our own class methods, 
   that do things for us instead of just returning information !


    #-------------------
    # - Create a useful Class Method that works for us !!!
    #-------------------
#!/usr/bin/env ruby

class Animal
  attr_accessor :name             # creates a SET/GET instance variable @name
  attr_writer   :color            # creates a SET instance variable @color
  attr_reader   :legs, :arms      # creates a GET instance variable @legs, and @arms
  
  # You can place a class method anywhere in the file you wish.
  # Typically youll place the class methods above the instance methods
  def self.all_species            # this will return a complete list of all species this class knows about
  ['cat', 'cow', 'dog', 'duck', 'hosrse', 'pig'] # Ask the class, & it doesnt have to have an instance
  end                             # the class itself can tell us
  
  
  def self.create_with_attributes(noise, color) # Create a new instance of the class
                                  # Make sure it has these attributes before we return it to the user
  animal = self.new(noise)        # Provide the required noise attribute
  animal.color = color            # Capture it as a local variable by "animal = Animal.new"
  return animal                   # Return the animal object/instance itself by calling a class method 
  end                             # The class method returns an instance of animal to us
 # Because we are inside the class, we can also make use of self.new instead of Animal.new !!!
 # Once again, that keyword refers to the object that were in, its not only for defining our methods,
 # we can make use of it throughout the method as well !!! 
  
   def initialize(noise, legs=4, arms=0) # set default values to help avoid errors on animal2!
     @noise = noise
     @legs = legs
     @arms = arms
     puts "A new animal has been instantiated!"
   end
   
   def noise=(noise)              # Set a SET/Write instance that will set it for us (SET METHOD)
     @noise = noise               
   end
     
  def noise                       # Set a GET/Read instance that will set it for us (GET METHOD)
    @noise                        # Calling an attribute is as easy calling for the variable value
  end                             # The ? is how do we set the variable, so we can call/return it

def color
  "The color is #{@color}!"
  end

puts Animal.all_species.inspect
  
animal1 = Animal.new("Moo!", 4, 0)   # <-- Instance of Animal class with "Animal.new"
animal1.name = "Delici"              # Write to the name attribute   of animal1
puts animal1.name                    # Read from the name attribute of animal1
animal1.color = "black"              # Write to the color attribute of animal1
puts animal1.color                   # Read from the color attribute of animal1 //should error out
puts animal1.legs                 
puts animal1.noise                   # <-- And then we assigned it to the animal variable

animal2 = Animal.create_with_attributes("Quack!", "white") # 2nd instance with "Animal.new"
puts animal2.noise                # Tell Animal2 to make noise
puts animal2.color
end

    #-------------------
    # - Class Attributes !!!
    #-------------------

# So far weve seen how we can create methods on our instances (instance methods),
# and weve seen how we can create methods on our classes (class methods), we also saw how we could
# put atributes on our instances and would store values that were particular to our instances.

# In this tutorial, were looking at class attributes that store values that are particular to 
# our classes. 

# Class attributes = Store values that apply to the class generally
# The same way that the class methods apply to the class generally

Class variable = @@variable # and it will persist anytime we have the class, even if we dont have an 
# instance. Instance variables are going to be only inside the instance. 

    #-------------------
    # - Defining a class variable with | Class Attributes 00:58
    #-------------------
#!/usr/bin/env ruby

class Animal
  attr_accessor :name             # creates a SET/GET instance variable @name
  attr_writer   :color            # creates a SET instance variable @color
  attr_reader   :legs, :arms      # creates a GET instance variable @legs, and @arms

    @@species = ['cat', 'cow', 'dog', 'duck', 'hosrse', 'pig'] # Class doesnt have to have an instance
    @@total_animals = 0           # Keeping track of all created animals
    @@current_animals = []
  # You can place a class method anywhere in the file you wish.
  # Typically youll place the class methods above the instance methods
  def self.all_species            # this will return a complete list of all species this class knows about
    @@species                     # Retrieve the species value/array for us to use.
  end                             # the class itself can tell us
  
  # The class variable doesnt get defined unless we call the .all_species method, and
  # the way around that would be to put it in the body of the class itself at line : 8. Now it gets
  # Read and initialized when the class gets defined. Its the same as wrapping it in an initiazlize method
 
  def self.create_with_attributes(noise, color) # Create a new instance of the class
                                  # Make sure it has these attributes before we return it to the user
  animal = self.new(noise)        # Provide the required noise attribute
  animal.color = color            # Capture it as a local variable by "animal = Animal.new"
  return animal                   # Return the animal object/instance itself by calling a class method 
  end                             # The class method returns an instance of animal to us
 # Because we are inside the class, we can also make use of self.new instead of Animal.new !!!
 # Once again, that keyword refers to the object that were in, its not only for defining our methods,
 # we can make use of it throughout the method as well !!! 
  
   def initialize(noise, legs=4, arms=0) # set default values to help avoid errors on animal2!
     @noise = noise
     @legs = legs
     @arms = arms
     @@total_animals += 1         # Total # of animals increases eachtime!
     @@current_animals << self    # Put this instance inside the animals array to keep track of it
     puts "A new animal has been created."
     puts "The total number of initialized animals is #{@@total_animals}!"
   end
   
   def noise=(noise)              # Set a SET/Write instance that will set it for us (SET METHOD)
     @noise = noise               
   end
     
  def noise                       # Set a GET/Read instance that will set it for us (GET METHOD)
    @noise                        # Calling an attribute is as easy calling for the variable value
  end                             # The ? is how do we set the variable, so we can call/return it

def color
  "The color is #{@color}!"
  end

puts Animal.all_species.inspect
  
animal1 = Animal.new("Moo!", 4, 0)   # <-- Instance of Animal class with "Animal.new"
animal1.name = "Delici"              # Write to the name attribute   of animal1
puts animal1.name                    # Read from the name attribute of animal1
animal1.color = "black"              # Write to the color attribute of animal1
puts animal1.color                   # Read from the color attribute of animal1 //should error out
puts animal1.legs                 
puts animal1.noise                   # <-- And then we assigned it to the animal variable

animal2 = Animal.create_with_attributes("Quack!", "white") # 2nd instance with "Animal.new"
puts animal2.noise                # Tell Animal2 to make noise
puts animal2.color

puts Animal.current_animals.inspect
end

>> # ./classes.rb:67:in `<class:Animal>': undefined method `current_animals' 
>> # for Animal:Class (NoMethodError) from ./classes.rb:3:in `<main>'

# The error occurs because, the same is true with our class attributes, and class variables as was true
# with our instances. We cannot access those values and attributes from outside the class. In order to 
# do that we need reader/writer methods.

    #-------------------
    # - Class reader / writer methods !!!
    #-------------------

# We saw how instance attributes used reader/writer methods to give access to them from outside 
# of the instance. Now in this tutorial were going to see how we can use class reader/writer methods 
# in order to have access to our class attributes from outside of the class.

#!/usr/bin/env ruby

class Animal
  attr_accessor :name             # creates a SET/GET instance variable @name
  attr_writer   :color            # creates a SET instance variable @color
  attr_reader   :legs, :arms      # creates a GET instance variable @legs, and @arms

    @@species = ['cat', 'cow', 'dog', 'duck', 'hosrse', 'pig'] # Class doesnt have to have an instance
    @@total_animals = 0           # Keeping track of all created animals
    @@current_animals = []
  # You can place a class method anywhere in the file you wish.
  # Typically youll place the class methods above the instance methods
  def self.species                # creates a GET/Reader instance class @@variable
    @@species                     # Retrieve the species value/array for us to use.
  end                             # the class itself can tell us
  
  def self.species=(array=[])     # creates a SET/Writer instance class @@variable     
    @@species = array 
  end
  
  def self.current_animals
    @@current_animals
  end
  
  # The class variable doesnt get defined unless we call the .all_species method, and
  # the way around that would be to put it in the body of the class itself at line : 8. Now it gets
  # Read and initialized when the class gets defined. Its the same as wrapping it in an initiazlize method
 
  def self.create_with_attributes(noise, color) # Create a new instance of the class
                                  # Make sure it has these attributes before we return it to the user
  animal = self.new(noise)        # Provide the required noise attribute
  animal.color = color            # Capture it as a local variable by "animal = Animal.new"
  return animal                   # Return the animal object/instance itself by calling a class method 
  end                             # The class method returns an instance of animal to us
 # Because we are inside the class, we can also make use of self.new instead of Animal.new !!!
 # Once again, that keyword refers to the object that were in, its not only for defining our methods,
 # we can make use of it throughout the method as well !!! 
  
   def initialize(noise, legs=4, arms=0) # set default values to help avoid errors on animal2!
     @noise = noise
     @legs = legs
     @arms = arms
     @@total_animals += 1         # Total # of animals increases eachtime!
     @@current_animals << self    # Put this instance inside the animals array to keep track of it
     puts "A new animal has been created."
     puts "The total number of initialized animals is #{@@total_animals}!"
   end
   
   def noise=(noise)              # Set a SET/Write instance that will set it for us (SET METHOD)
     @noise = noise               
   end
     
  def noise                       # Set a GET/Read instance that will set it for us (GET METHOD)
    @noise                        # Calling an attribute is as easy calling for the variable value
  end                             # The ? is how do we set the variable, so we can call/return it

def color
  "The color is #{@color}!"
  end

Animal.species = ['frog', 'fish']
puts Animal.species.inspect
  
animal1 = Animal.new("Moo!", 4, 0)   # <-- Instance of Animal class with "Animal.new"
animal1.name = "Delici"              # Write to the name attribute   of animal1
puts animal1.name                    # Read from the name attribute of animal1
animal1.color = "black"              # Write to the color attribute of animal1
puts animal1.color                   # Read from the color attribute of animal1 //should error out
puts animal1.legs                 
puts animal1.noise                   # <-- And then we assigned it to the animal variable

animal2 = Animal.create_with_attributes("Quack!", "white") # 2nd instance with "Animal.new"
puts animal2.noise                # Tell Animal2 to make noise
puts animal2.color

puts Animal.current_animals.inspect # .each can also be used to ask it for the data elements
end

    #-------------------
    # - IMPORTANT NOTES !!!
    #-------------------

# For class attributes there is no current support for:

attr_accessor
attr_reader
attr_writer 

# For class attributes. You have to write them yourself, or write a method that does it for you.
# Rails has cattr_accessor that does it for us automatically.


    #-------------------
    # - Class Inheritance
    #-------------------

# Bestowal of methods and attributes of another class.

# So far we have been working with the Animal class, and creating instances and give those 
# instances attributes like cow, moo, pig oink, and duck quack.

# A far better way to do it is by using class inheritance by using sub-classes. Classes that 
# would inherit attributes from Animal. A new class like cow, pig, and duck and each of these 
# would inherit animal behaviors from the animal class, but they would be their own class, 
# and keep their own unique behaviors seperate from the Animal class.

# The Animal class in this case is called : SuperClass / Parent Class
# The others are called the SubClass / Children Classes
#!/usr/bin/env ruby

class Animal
  attr_accessor :name             # creates a SET/GET instance variable @name
  attr_writer   :color            # creates a SET instance variable @color
  attr_reader   :legs, :arms      # creates a GET instance variable @legs, and @arms

    @@species = ['cat', 'cow', 'dog', 'duck', 'hosrse', 'pig'] # Class doesnt have to have an instance
    @@total_animals = 0           # Keeping track of all created animals
    @@current_animals = []
  # You can place a class method anywhere in the file you wish.
  # Typically youll place the class methods above the instance methods
  def self.species                # creates a GET/Reader instance class @@variable
    @@species                     # Retrieve the species value/array for us to use.
  end                             # the class itself can tell us
  
  def self.species=(array=[])     # creates a SET/Writer instance class @@variable     
    @@species = array 
  end
  
  def self.current_animals
    @@current_animals
  end
  
  # The class variable doesnt get defined unless we call the .all_species method, and
  # the way around that would be to put it in the body of the class itself at line : 8. Now it gets
  # Read and initialized when the class gets defined. Its the same as wrapping it in an initiazlize method
 
  def self.create_with_attributes(noise, color) # Create a new instance of the class
                                  # Make sure it has these attributes before we return it to the user
  animal = self.new(noise)        # Provide the required noise attribute
  animal.color = color            # Capture it as a local variable by "animal = Animal.new"
  return animal                   # Return the animal object/instance itself by calling a class method 
  end                             # The class method returns an instance of animal to us
 # Because we are inside the class, we can also make use of self.new instead of Animal.new !!!
 # Once again, that keyword refers to the object that were in, its not only for defining our methods,
 # we can make use of it throughout the method as well !!! 
  
   def initialize(noise, legs=4, arms=0) # set default values to help avoid errors on animal2!
     @noise = noise
     @legs = legs
     @arms = arms
     @@total_animals += 1         # Total # of animals increases eachtime!
     @@current_animals << self    # Put this instance inside the animals array to keep track of it
     puts "A new animal has been created."
     puts "The total number of initialized animals is #{@@total_animals}!"
   end
   
   def noise=(noise)              # Set a SET/Write instance that will set it for us (SET METHOD)
     @noise = noise               
   end
     
  def noise                       # Set a GET/Read instance that will set it for us (GET METHOD)
    @noise                        # Calling an attribute is as easy calling for the variable value
  end                             # The ? is how do we set the variable, so we can call/return it

def color
  "The color is #{@color}!"
  end# creates a SET/Write instance class @@variable

class Cow < Animal               # Indicates its a subclass of Animal with Cow < Animal
end

  
Animal.species = ['frog', 'fish']
puts Animal.species.inspect
  
animal1 = Animal.new("Moo!", 4, 0)   # <-- Instance of Animal class with "Animal.new"
animal1.name = "Delici"              # Write to the name attribute   of animal1
puts animal1.name                    # Read from the name attribute of animal1
animal1.color = "black"              # Write to the color attribute of animal1
puts animal1.color                   # Read from the color attribute of animal1 //should error out
puts animal1.legs                 
puts animal1.noise                   # <-- And then we assigned it to the animal variable

animal2 = Animal.create_with_attributes("Quack!", "white") # 2nd instance with "Animal.new"
puts animal2.noise                # Tell Animal2 to make noise
puts animal2.color

puts Animal.current_animals.inspect # .each can also be used to ask it for the data elements

maisie = Cow.new("Moo!")
puts maisie.noise
puts animal1.class                  # Displays the class
puts maisie.class                   # Displays the class
end


    #-------------------
    # - IMPORTANT NOTES !!!
    #-------------------

# In ruby we cant inherit from multiple SuperClasses, we can only inherit from one ParentClass at 
# a time when working with SubClasses. If we need to have different behaviors, we need to use modules.


    #-------------------
    # - Subclass Overriding
    #-------------------

# In the previous lesson we saw how we could inherit all of the methods, and attributes from 
# a parent SuperClass into the child subclass. But what happens when you dont want all of the methods,
# lets say you want everything in the parent class, except there are a couple of things you want to do 
# differently than thae parent did them. We can do that by overriding methods in the subclass.
#!/usr/bin/env ruby

class Animal
  attr_accessor :name             # creates a SET/GET instance variable @name
  attr_writer   :color            # creates a SET instance variable @color
  attr_reader   :legs, :arms      # creates a GET instance variable @legs, and @arms

    @@species = ['cat', 'cow', 'dog', 'duck', 'hosrse', 'pig'] # Class doesnt have to have an instance
    @@total_animals = 0           # Keeping track of all created animals
    @@current_animals = []
  # You can place a class method anywhere in the file you wish.
  # Typically youll place the class methods above the instance methods
  def self.species                # creates a GET/Reader instance class @@variable
    @@species                     # Retrieve the species value/array for us to use.
  end                             # the class itself can tell us
  
  def self.species=(array=[])     # creates a SET/Writer instance class @@variable     
    @@species = array 
  end
  
  def self.current_animals
    @@current_animals
  end
  
  # The class variable doesnt get defined unless we call the .all_species method, and
  # the way around that would be to put it in the body of the class itself at line : 8. Now it gets
  # Read and initialized when the class gets defined. Its the same as wrapping it in an initiazlize method
 
  def self.create_with_attributes(noise, color) # Create a new instance of the class
                                  # Make sure it has these attributes before we return it to the user
  animal = self.new(noise)        # Provide the required noise attribute
  animal.color = color            # Capture it as a local variable by "animal = Animal.new"
  return animal                   # Return the animal object/instance itself by calling a class method 
  end                             # The class method returns an instance of animal to us
 # Because we are inside the class, we can also make use of self.new instead of Animal.new !!!
 # Once again, that keyword refers to the object that were in, its not only for defining our methods,
 # we can make use of it throughout the method as well !!! 
  
   def initialize(noise, legs=4, arms=0) # set default values to help avoid errors on animal2!
     @noise = noise
     @legs = legs
     @arms = arms
     @@total_animals += 1         # Total # of animals increases eachtime!
     @@current_animals << self    # Put this instance inside the animals array to keep track of it
     puts "A new animal has been created."
     puts "The total number of initialized animals is #{@@total_animals}!"
   end
   
   def noise=(noise)              # Set a SET/Write instance that will set it for us (SET METHOD)
     @noise = noise               
   end
     
  def noise                       # Set a GET/Read instance that will set it for us (GET METHOD)
    @noise                        # Calling an attribute is as easy calling for the variable value
  end                             # The ? is how do we set the variable, so we can call/return it

def color
  "The color is #{@color}!"  # Currently set to green!
  end# creates a SET/Write instance class @@variable

class Cow < Animal               # Indicates its a subclass of Animal with Cow < Animal
  def color
       "The cows color is #{@color}!" # Currently set to pink!
  end
end

# The above subclass statement says: Inherit all the behaviors of Animal, but after you do that
# overwrite the cow class with this one method!!!!! We can override ANY CLASS METHODS in exactly this way
  
Animal.species = ['frog', 'fish']
puts Animal.species.inspect
  
animal1 = Animal.new("Moo!", 4, 0)   # <-- Instance of Animal class with "Animal.new"
animal1.name = "Delici"              # Write to the name attribute   of animal1
puts animal1.name                    # Read from the name attribute of animal1
animal1.color = "black"              # Write to the color attribute of animal1
puts animal1.color                   # Read from the color attribute of animal1 //should error out
puts animal1.legs                 
puts animal1.noise                   # <-- And then we assigned it to the animal variable

animal2 = Animal.create_with_attributes("Quack!", "green") # 2nd instance with "Animal.new"
puts animal2.noise                # Tell Animal2 to make noise
puts animal2.color

puts Animal.current_animals.inspect # .each can also be used to ask it for the data elements

maisie = Cow.create_with_attributes("Moo!", "pink")
puts maisie.noise
puts animal1.class                  # Displays the class
puts maisie.class                   # Displays the class
puts maisie.color
end


    #-------------------
    # - Accessing the Superclass !
    #-------------------

# In the last lesson we saw how to override some of the methods that our subclass inherited from the
# Super / parentclass. We want to inherit most of the superclass methods, but we still want to modify a few bits of them.

# We can access the superclass with the super keyword.
#!/usr/bin/env ruby

class Animal
  attr_accessor :name             # creates a SET/GET instance variable @name
  attr_writer   :color            # creates a SET instance variable @color
  attr_reader   :legs, :arms      # creates a GET instance variable @legs, and @arms

    @@species = ['cat', 'cow', 'dog', 'duck', 'hosrse', 'pig'] # Class doesnt have to have an instance
    @@total_animals = 0           # Keeping track of all created animals
    @@current_animals = []
  # You can place a class method anywhere in the file you wish.
  # Typically youll place the class methods above the instance methods
  def self.species                # creates a GET/Reader instance class @@variable
    @@species                     # Retrieve the species value/array for us to use.
  end                             # the class itself can tell us
  
  def self.species=(array=[])     # creates a SET/Writer instance class @@variable     
    @@species = array 
  end
  
  def self.current_animals
    @@current_animals
  end
  
  # The class variable doesnt get defined unless we call the .all_species method, and
  # the way around that would be to put it in the body of the class itself at line : 8. Now it gets
  # Read and initialized when the class gets defined. Its the same as wrapping it in an initiazlize method
 
  def self.create_with_attributes(noise, color) # Create a new instance of the class
                                  # Make sure it has these attributes before we return it to the user
  animal = self.new(noise)        # Provide the required noise attribute
  animal.color = color            # Capture it as a local variable by "animal = Animal.new"
  return animal                   # Return the animal object/instance itself by calling a class method 
  end                             # The class method returns an instance of animal to us
 # Because we are inside the class, we can also make use of self.new instead of Animal.new !!!
 # Once again, that keyword refers to the object that were in, its not only for defining our methods,
 # we can make use of it throughout the method as well !!! 
  
   def initialize(noise, legs=4, arms=0) # set default values to help avoid errors on animal2!
     @noise = noise
     @legs = legs
     @arms = arms
     @@total_animals += 1         # Total # of animals increases eachtime!
     @@current_animals << self    # Put this instance inside the animals array to keep track of it
     puts "A new animal has been created."
     puts "The total number of initialized animals is #{@@total_animals}!"
   end
   
   def noise=(noise)              # Set a SET/Write instance that will set it for us (SET METHOD)
     @noise = noise               
   end
     
  def noise                       # Set a GET/Read instance that will set it for us (GET METHOD)
    @noise                        # Calling an attribute is as easy calling for the variable value
  end                             # The ? is how do we set the variable, so we can call/return it

def color
  "The color is #{@color}!"  # Currently set to green!
  end# creates a SET/Write instance class @@variable

class Cow < Animal               # Indicates its a subclass of Animal with Cow < Animal
  def color
       "The cows color is #{@color}!" # Currently set to pink!
  end
end

# The above subclass statement says: Inherit all the behaviors of Animal, but after you do that
# overwrite the cow class with this one method!!!!! We can override ANY CLASS METHODS in exactly this way

class Pig < Animal
   def noise
     super                    # Honor the parentclass method here, call the noise instant on the parent!
   "Hello"
   parent_noise = super
   return "Hello and also #{parent_noise}!"
   end
end

Animal.species = ['frog', 'fish']
puts Animal.species.inspect
  
animal1 = Animal.new("Moo!", 4, 0)   # <-- Instance of Animal class with "Animal.new"
animal1.name = "Delici"              # Write to the name attribute   of animal1
puts animal1.name                    # Read from the name attribute of animal1
animal1.color = "black"              # Write to the color attribute of animal1
puts animal1.color                   # Read from the color attribute of animal1 //should error out
puts animal1.legs                 
puts animal1.noise                   # <-- And then we assigned it to the animal variable

animal2 = Animal.create_with_attributes("Quack!", "green") # 2nd instance with "Animal.new"
puts animal2.noise                # Tell Animal2 to make noise
puts animal2.color

puts Animal.current_animals.inspect # .each can also be used to ask it for the data elements

maisie = Cow.create_with_attributes("Moo!", "pink")
puts maisie.noise
puts animal1.class                  # Displays the class
puts maisie.class                   # Displays the class
puts maisie.color
puts wilbur = Pig.new("Oink!")
puts wilbur.noise
end


#--------------------------------------
     '#7 MODULES'  
#--------------------------------------

     #-------------------
     # - What is a module ? 
     #-------------------
 
# Modules are wrappers around our ruby code. You might be thinking that classes are the same as modules,
# A class is a way for us to roll up different methods, and attributes into a wrapper.

# Modules work in a very similar way, with one important difference.
# They cant be instantiated, meaning we can never have an instance of a module, 
# the way we have an instance of a class. Instead were going to use our modules in conjunction with 
# our classes. That makes more sense as we examine the two reasons why we would want to use modules.
     
     #-------------------
     # - Namespacing 
     #-------------------

* Namespacing allows us to have class names that dont conflict.

# Namespacing can:
* Keep class names distinct from standard Ruby classes
* Disambiguate your own class definitions
* Ensure classes used in open sourced code wont conflict
     
=begin

Example:

If your developing an online dating site, and you have to write a class that sets up the actual date between two people. Our definition of date is totally different from the standard ruby
definition of a date, which is a calendar date with a year, month, and a day.

=end
     
     class Date
       xyz
     end
     
     dinner = Date.new           # Meeting that should happen
     dinner.date = Date.new      # Calendar date that event will take place on

=begin
So Ruby will get confused because by the same names because it cant tell the difference between our date as in meeting up with someone, and the calendar date mentoned above.

=end

# You can obviously see the conflict above. This is where namespacing helps us.
# All we have to do is wrap our class in a module name to avoid name conflict.
     
     module Romantic
       class Date
	 xyz
       end
     end
     
     dinner = Romantic::Date.new   # Actual meeting of the two people  // namespaced / wrapped date !!
     dinner.date = Date.new        # Calendar details of the event taking place
     

     #-------------------
     # - Mix-Ins 
     #-------------------
     
# What are Mix-Ins?
# In the previous lesson we learned about modules for namespacing. IN this lesson, well look at
# the second most powerful way to use modules, which is to use them as mixins.
    
# In ruby we are only allowed to inherit from one Parent or SuperClass. If assitional functionality is needed, it can be placed into a module and mixed in to any class that needs it. 
     
#!/usr/bin/env ruby

module ContactInfo    # This will not wrap around our class, its a standalone module
    attr_accessor :first_name, :last_name, :city, :state, :zip_code

 def full_name        # We want the full_name method in all three classes. 
                      # We could copy it and use it that way, but if it was a large complex method, that
                      # would be a really bad thing to do. SO what we really want to do it use modules,
                      # as mixins for this behavior, as seen above!
   
   return @first_name + " " + @last_name
 end

 def city_state_zip
    csz = @city
    csz += ", #{@state}" if @state
    csz += " #{zip_code}" if @zip_code
    return csz
  end

end                    # Modules are just wrappers for code

class Person
  include ContactInfo  # Will include ContactInfo module and all of its functionality
end                    # Module functionality is also inherited

class Teacher
  include ContactInfo  # Will include ContactInfo module and all of its functionality
end                    # Module functionality is also inherited

class Student < Person # Student class inherited from the Person class which has the ContactInfo module
  attr_accessor :book, :grades  # It also added some of its own custom attributes to the mix
end                    # Module functionality is also inherited
     

     #-------------------
     # - Load, require and include 
     #-------------------

# In the last lesson we learned how to use modules as mixins. We defined our module and our classes all 
# in the same file. Making sure that the module came before the class, at the very top. To ensure that ruby would have a definition for the module, so that it could include it when 
# the class definition came up.  


     #-------------------
     # - Important Note 
     #-------------------

# * Modules are usually kept in seperate files
# * Module files can server as code libraries & we simply mixin that library whenever we need it
# * We need to have a way to load modules so that ruby already has the definition
# before we try and mix it in with one of our classes in our ruby programs

# We can use the following commmands for such actions:

load    # used to load module files to be used by our classes // sort of like a pre-requisite
include # used exclusively for bringing modules in as mixins, it has nothing to do with loading in files

# Require example:

load 'contact.rb'
class Person
  include ContactInfo  # Will include ContactInfo module and all of its functionality
end                    # Module functionality is also inherited

load 'contact.rb'
class Teacher
  include ContactInfo  # Will include ContactInfo module and all of its functionality
end                    # Module functionality is also inherited

load 'contact.rb'
class Student < Person # Student class inherited from the Person class which has the ContactInfo module
  attr_accessor :book, :grades  # It also added some of its own custom attributes to the mix
end                    # Module functionality is also inherited

# We dont want to load load 'contact.rb' 3 times in the above class file. 
# That is a waste of time and resources. A better way i to use require!!

     #-------------------
     # - require 
     #-------------------

require 'contact.rb'   # Keeps track if the file has already been loaded,
                       # & only includes it if it has not been loaded before.
class Person
  include ContactInfo  # Will include ContactInfo module and all of its functionality
end                    # Module functionality is also inherited

class Teacher
  include ContactInfo  # Will include ContactInfo module and all of its functionality
end                    # Module functionality is also inherited

class Student < Person # Student class inherited from the Person class which has the ContactInfo module
  attr_accessor :book, :grades  # It also added some of its own custom attributes to the mix
end                    # Module functionality is also inherited


     #-------------------
     # - RECAP !!! 
     #-------------------

load    # loads source file every time its called, will return true if the file has already been loaded
require # loads a source file only once, and will not reload if already added!
include # includes modules, has nothing to do with files


     #-------------------
     # - Enumerable as a Mix-In 07. Classes 04. 02:03 | A bit Advanced!!!
     #-------------------

# Quick insight in how ruby uses modules inside its standard library of classes.

# An enumerable is something that can be counted. If we have a set of things that can be counted,
# then we should be able to do something with them (sort them, collect them, search thru them). 
# and that functonality is mixed in to all of those ruby sets, (array, range, hash, string)
# You can start to see how ruby shares all of this functionality between the different classes.


#--------------------------------------
     '#8 WORKING WITH FLAT FILES'  
#--------------------------------------

     #-------------------
     # - File path separators 
     #-------------------
  
# Windows has c:\ or "\"
# UNIX/Linux has /home or "/"
     
# So the question is, which of these do we use in our ruby code if we want our application to be cross platform?
     
# I ruby you should always use the forward slash notation and it will work on both UNIX/Windows.
# But you dont want to use back slash because it wont work on UNIX/LINUX.
     
# But theres an even better way of doing it. Its by using the file class, the file class 
# has a method called join, and all it does it take a bunch of strings and join them together with the apropriate separator
     
     File.join('shared', 'lib', 'myfile.rb')
     
     # So on UNIX well get /, and on Windows well get \

     #-------------------
     # - File paths 
     #-------------------

# Now that we know how we can use ruby to get the right file path separators, 
# We need to understand how we can get meaningful file paths. How we can locate the files that we either
# want to write to, or read from. 
     
Absolute path: /etc/shadow                     # Path from the beginning of the UNIX root directory
               C:\Windows\System32\config\SAM  # Path from the beginning of the Windows root directory
	       
Relative Path: ./../../path/to/file            # single dot is current directory, 
                                               # double dot is moving back one directory

# If were going to use a variable path we need to know in which directory we are in when executing
# our program. sort of like $PWD. 

# The ruby variable that allows us to do that is 

__FILE__                   # Will just return the name of the file to us
File.expand_path(__FILE__) # Use a method on the file class for it to tell us where exactly the file is
                           # That says tell me what the absolute path to this file is!!

# To ensure success within cross platform systems, using a relative path, then getting an absolute path
# from that is much better, than the other way around. 

# Relative paths

# __FILE__ is this file
puts __FILE__

# Expand_path will convert a relative path to an absolute path. In this case, it returns the full
# path to the file
puts File.expand_path(__FILE__)

# Relative paths are easiest when you start with this directory
puts File.dirname(__FILE__)

     #-------------------
     # - Important Note 
     #-------------------

# If you have a file with a space in the name, you have to escape the space with a backslash,
# and put it in double quotes.
puts File.join(File.dirname(__FILE__), '..', "Excercise\ Files")


     #-------------------
     # - Accessing Files 
     #-------------------

# File.new takes two arguments from the file we want to read from or write to
>> file = File.new('irb_testfile.txt', 'w')     # 1st argv is filename, 2 is write mode
=> #<File:irb_testfile.txt>
>> file.close                                   # 2 reasons to close it properly
                                                # to prevent unintentional file writes
                                                # to free-up ruby resources holding the file open

# File.open
File.open('file1.txt', 'r') do |file|
    # read data from the file
end

# This method works in very much the same way as File.new but instead of instantiating a file object,
# we just open a file & pass it a code block of instructions. In the end, it closes it for us.
# You should always use File.open instead of File.new because it closes it for you, and you dont have to worry about the two reasons we previously discussed above.

# second argv is the mode: 
r    # read from the start, file must already exist
r+   # read and write "WITHOUT" destructing or wiping out the existing document / file !!!
w    # writes from the start, if file exists it wipes it, if it doesnt, it creates it (destructive)
w+   # read & write from the start of the doc "WITH" destructive truncating // quick way to wipe a file!
a    # append to the end of a file, a log file for example
a+   # read and write to the end of the document.

# The modes you should use are:
    
r   # Useful when you want to read from a file
w   # Useful when you want to start a brand new document
a   # Special case for when you want to append something to the end of a file
r+  # Useful when you want to read/write to/from a file

    
     #-------------------
     # - Writing to files 
     #-------------------
   
# Write data to a file using puts as an instance method
>> file = File.new('irb_testfile.txt', 'w')
=> #<File:irb_testfile.txt>
>> file.puts "abcd"                      # Using this method, ruby waits for us to close the file before
=> nill                                  # writing the data
?>   file.close
?>   file = File.new('irb_testfile.txt', 'w')
=> #<File:irb_testfile.txt>
>> file.puts "abcd"
=> nil
>> file.print "efgh"                    # Same as puts but doesnt place a line return \n like puts does
>> file.write "ijkl"
=> 4                                    # Do the same as print & returns the # of chars/bytes it wrote 
>> file << "mnop"                       # Append to the file with the append method <<
=> #<File:irb_testfile.txt>             # It returns the file object to us


     #-------------------
     # - Reading from files 
     #-------------------

>> file = File.new('irb_testfile.txt', 'r')   # Notice the 'r' instead of 'w', 'w' would wipe the file
=> #<File:irb_testfile.txt>
>> file.gets                                  # We used puts to enter data to file
=> "abcd\n"                                   # So we can also use gets to retrieve data from the file


     #-------------------
     # - Important Note !!!
     #-------------------

file.gets is the exact mirror of file.puts.
file.puts adds a line, plus a line return, and file.gets retrieves the line, plus the line return !!!


# FILE.GETS.CHOMP EXAMPLE:
>> file.gets.chomp
=> "efghijklmnop"                                  # Gets the next line without the line return

# Lets try running file.gets.chomp one more time
>> file.gets.chomp
NoMethodError: undefined method chomp for nil:NilClass
        from (irb):519
        from /usr/bin/irb:12:in <main>

     #-------------------
     # - Important Note !!!
     #-------------------

	# It errored out because there was no other data in the file to get because we reached the end of the file.

	
>> file = File.new('irb_testfile.txt', 'r')
=> #<File:irb_testfile.txt>	

# Instead of reading a full line, we can also read part of a line
>> file.read(4)                       # Read four chars/bytes from the file
=> "abcd"      
>> file.read(3)                       # Read three chars/bytes from the file
=> "\nef"                             # Line return counts as a character \n
>> file.read(3)
=> "ghi"

# Those are the two primary ways of reading from a file. We can get back the entire line,
# or we can just retrieve a specific # of chars/bytes from the file.

# Now this works for simple small files, but for a massive complex file this will not be as effective.
# For that, we need to loop thru the text file:
 
File.open('file1.txt', 'r') do |file|
  while line = file.gets              # While theres a new line, if it returns nil, the loop exits
      puts "** " + line.chomp.reverse + " **" # if the file exists, chomp off the end, reverse & place
  end                                         # inside these asterisks
end

# Now if you know you need to loop thru each line, the easiest way to do it is with:
File.open('file1.txt', 'r') do |file|   # Open up the file
  file.each_line {|line| puts line.upcase}  # GO thru each line, & assign it to the code block variable
end                                          # In this case were just upcasing it.



     #-------------------
     # - File Pointer
     #-------------------

# This lesson shows and explains what the file pointer is and how we can mnipulate it.
# It works just like the cursor does in your favorite word processing program.

# Two big differences:

# The tiny difference between the ruby file pointer & your favorite word processor is that if the 
# file pointer is at a specific spot, it doesnt insert text, it overwrites it. 

# Second difference is that the file pointer is not just for writing to files, but from reading 
# from files as well.

# Here well see how to find out the location of the file pointer and how to move it to different
# locations
>> file = File.new('irb_testfile.txt', 'r+')  # Note the 'r+' for non-destructive read/writing
=> #<File:irb_testfile.txt>
>> file.pos                                   # Find the location of the file pointer with .pos method
=> 0                                          # Like an array it starts counting at 0
>> file.read(3)                               # Move the file pointer up 3 spaces by reading 3 bytes
=> "abc"
>> file.pos                                  # Check pointer position again
=> 3                                         # It indeed is at position 3 ;)
>> file.gets                                 # Returns two bytes "d" & a line return
=> "d\n"
>> file.pos                                  # Pointer is at position 5
=> 5


     #----- --------------
     # - Important Note !!
     #-------------------

# The file pointer does not honor the line return returned above. You are probably asking yourself it should be at position 0, due to the new line that was returned above. Thats the
# important thing to note above the file pointer, it doesnt care about line returns, it treats every
# character in the file as one long series of numbers. Get it, got it, good !!!

# Move the file pointer to a specific position
>> file.pos = 13           # Move to position 13
=> 13
>> file.read(3)            # Read 3 bytes
=> "mno"
>> file.pos                # Current position is at 16 because it advanced when we did the previous 
=> 16                      # file.read(3)
>> file.read(10)
=> "p"
>> file.pos
=> 17
>> file.eof?              # Confirm we are at the end of the file !!!
=> true                   # If we werent at the end of the file it would return false ofcourse (;
>> file.write 'qrst'      # Append 4 bytes to the file
=> 4
>> file.pos = 0           # We can jump back to the beginning of the file with file.pos = 0
=> 0
>> file.pos               # Confirm the pointer is at position 0
=> 0
>> file.pos = 17          # Change the pointer to position 17
=> 17
>> file.pos               # Confirm the pointer is at position 17
=> 17
>> file.rewind            # You can also use the rewind method to automatically take us to 0 
=> 0                      # vs file.pos = 0's explicitly telling it to take us to position 0 !!!
>> file.pos               # Confirm the pointer is at position 0
=> 0

     #-------------------
     # - Important Pitfalls you need to know !! | 07 File Pointer.mov 04:25
     #-------------------

# 1ST PITFALL!!

>> file.lineno            # Appears to be returning the line number right?
=> 1                      # Wrong! Its an internal counter that gets & readline uses.
                          # They use it to keep track what line they are on at the time.
                          # It has no relation WHAT-SO-EVER to the file pointer!!

# So what is file.lineno useful for? Its useful if your using gets all the time to see what line 
# you are on. 


# 2ND PITFALL!!

     #-------------------
     # - Octal notation for Nil // 07 File Pointer.mov 06:23
     #-------------------

# You CAN set the file pointer position number beyond the end of the file (Which is bad!!!). 


     #-------------------
     # - Renaming & Deleting Files 
     #-------------------

>> file = File.new('file_to_rename.txt', 'w')
=> #<File:file_to_rename.txt>
>> file.puts "This is a file for renaming and then deleting."
=> nil
>> file.close
=> nil
>> File.rename('file_to_rename.txt', 'file_to_delete.txt')      # Rename
=> 0
>> File.delete('file_to_delete.txt')                            # Delete
=> 1
>> file = File.new('file_to_copy.txt', 'w')                     # Create an initialized ver of file
=> #<File:file_to_copy.txt>
>> file.close                                                   # Close the file to create the file
=> nil

    #-------------------
    # - Important Note 
    #-------------------

# The file class gives us:
- rename
- delete, unlink is a synonym for delete, so use it as a replacement for delete if you wish


     #-------------------
     # - Important Note 
     #-------------------

# Directory/file permissions come into play when performing rename/delete operations on files/dirs
#  


     #-------------------
     # - Copying Files 
     #-------------------

>> FileUtils.copy('file_to_copy.txt', 'copied.txt')            # Both FileUtils.copy work!
=> nil 
>> FileUtils.cp('file_to_copy.txt', 'copied.txt')              # Both FileUtils.cp work!
=> nil 


    #-------------------
    # - Important Note on FileUtils 
    #-------------------

# FileUtils class that can be loaded from the ruby standard library.
require 'fileutils'

# Which gives us:
cp, copy
mv, move
rm, remove
cd, chmod, chown, pwd, ln, touch, mkdir, rmdir

# Gives us familiar unix/linux file utilities !!!!!


    #-------------------
    # - Important Note on FTools 
    #-------------------

# A module that adds FileUtils features to File, especially copy / cp
# IT IS NOT RECOMMENDED TO USE FTOOLS, use FileUtils instead because:
# its going to be removed from the Ruby Standard Library in Ruby 1.9

require 'ftools'


    #-------------------
    # - Examining File Details 
    #-------------------

# We can use the following string eachtime vs writing it all out each time by calling the file variable!
>> file = File.new('irb_test_file.txt', 'w')
=> #<File:irb_test_file.txt>

# There are a number of class methods on the file class that let us check out information.
>> File.exist?(file)
=> true                   # Useful if you want to check if a file exists before you read, write/delete

>> File.file?(file)
=> true                   # Check to see if the file is actually a file
>> File.directory?(file)
=> false                  # Check to see if its a directory


    #-------------------
    # - Important Note on file / directory 
    #-------------------

# A directory will return true that it exists, but then we can tell the difference between if its a 
# file or not by using file or directory, as shown above.


# Check for RWX FILE PERMISSIONS !!!!!!
?>   File.readable?(file)
=> true
>> File.writable?(file)
=> true
>> File.executable?(file)
=> false
>> File.size?(file)    # Returns the answer in bytes
=> 787                 # Number of characters/bytes in the file if were using a single byte language
                       # like Ruby. Its especially useful to VERIFY THAT WE DONT WRITE BEYOND THE END
                       # OF THE FILE (...EOF

>> File.dirname(file)      # Show the directory of the file.
=> "."                     # Shows the dir we are currently in, as in ./test.rb (current-directory)
>> File.expand_path(file)  # Shows the full path to the file.
=> "/home/nanob0t/irb_test_file.txt"
>> File.basename(file)     # Basename just says "give me whats at the end"
=> "irb_test_file.txt"
>> full_path = File.expand_path(file)
=> "/home/nanob0t/irb_test_file.txt"
>> File.basename(full_path)   # This is the reverse of expand_path seen above!!!
=> "irb_test_file.txt"        # Basename just says "give me whats at the end"
>> File.extname(file)
=> ".txt"                     # Gives us back the file extension mname

    #-------------------
    # - Detailed File attributes | time stamps 
    #-------------------

# Class methods from the File Class:

>> File.atime(file)               # Last accessed time | read from or written to
=> 2013-02-19 22:21:25 -0800
>> File.mtime(file)               # Last modified time | written to
=> 2013-02-19 22:21:25 -0800
>> File.ctime(file)               # Last status change time, NOT created time!!!
=> 2013-02-19 22:21:25 -0800      # Read or write & changes to owner, group & permissions

# In general, try not ti use it. Only for when you need to find out :
# Read or write & changes to owner, group & permissions


    #-------------------
    # - Working on a file !!! 
    #-------------------

>>myfile = File.new(file, 'r')
=> #<File:irb_test_file.txt>

# Lets see if we can call instance methods on it.
>> myfile.size
=> 0
>> myfile.readable?
NoMethodError: undefined method readable? for #<File:irb_test_file.txt>
        from (irb):566
        from /usr/bin/irb:12:in <main>
	
# No we cant!
	
# But we CAN run the following method to enumerate all the available methods to us::
>> myfile.stat
=> #<File::Stat dev=0xfc00, ino=5243125, mode=0100664, nlink=1, uid=1000, gid=1000, rdev=0x0, size=0, blksize=4096, blocks=0, atime=2013-02-19 22:21:25 -0800, mtime=2013-02-19 22:21:25
-0800, ctime=2013-02-19 22:21:25 -0800>

# From the above output, we can see all the instance methods available to us via the stat object.
>> myfile.stat.size
=> 0
>> myfile.stat.mtime
=> 2013-02-19 22:21:25 -0800
>> myfile.stat.dev
=> 64512
>> myfile.stat.blksize
=> 4096	
>> myfile.stat.writable?
=> true
>> myfile.stat.readable?
=> true
>> myfile.stat.writable?
=> true
>> myfile.stat.executable?
=> false


    #-------------------
    # - Working with Directories 
    #-------------------

>> File.dirname(__FILE__)           # Find out the directory of the file that were in
=> "."                              # Current directory
>> File.expand_path(__FILE__)       # Show full listing of script/directory location
=> "/home/nanob0t/(irb)"

>> File.dirname(__FILE__)           # This is what we want to use inside our ruby files.
                                    # It gives the starting point relative to that file.

# Directory class and its methods:
>> Dir.pwd
=> "/home/nanob0t"


    #-------------------
    # - Which do I use? 
    #-------------------

# Use __FILE__ because its relative to the .rb script, and also pwd can change


    #-------------------
    # - Move around the filesystem 
    #-------------------

# You can also navigate around the filesystem with the Directory Class methods::
>> Dir.chdir('..')                 # Move up one dir  
=> 0
>> Dir.pwd                         # Confirm
=> "/home"                         

>> Dir.chdir # This method also takes an absolute path as well as a relative path:
>> Dir.chdir(File.join('', 'home', 'nanob0t'))  # Blank separators at the beginning say start at /
=> 0
>> Dir.pwd
=> "/home/nanob0t"


    #-------------------
    # - Inspect and work with directory contents
    #-------------------

# To inspect directory contents we can use the entries Class method in the Directory Class:
>> Dir.entries('.')
=> ["VNC-Viewer-5.0.3-Linux-x64", ".kderc", ".kde", ".xsession-errors.old", ".macromedia", ".irb_history", ".config", ".", "copied.txt", ".bash_logout", ".goutputstream-WEYIPW", ".rvm",
".local", ".bash_history", "file_to_copy.txt", ".gem", ".vnc", "Baskets Before Restoration", ".gtkrc-2.0", ".xchm", ".Xauthority", ".directory", ".bashrc", ".fonts.conf", ".mozilla", "..",
".pulse-cookie", "zp10its", ".dmrc", ".zshrc", ".wireshark", ".gtk-bookmarks", "doc", "irb_test_file.txt", ".mission-control", ".pulse", ".recently-used", ".irbrc", ".thumbnails", ".adobe",
".xsession-errors", ".xchat2", ".gconf", ".dbus", ".zprofile", ".gstreamer-0.10", ".profile", ".bash_profile", ".viminfo", ".vimrc", ".cache"]

# It doesnt know which directory, ITS NOT AN INSTANCE, so we have to explicitly say, this DIRECTORY!

# The above output shows a list of entries, its just an array of strings. We can turn around and pass
# those strings to the file class, open each one up, filter thru, iterate thru, look for files thats 
# begin with the letter A for example, then do something to those like delete them perhaps.

# The important thing to note here is that its an array: it can be sorted, collected.

# Most of the time what we really want to do with it it call each in it:


>> Dir.entries('.').each do |entry|  # It will let us go thru each entry via a code block.
?>     print entry + ": "            # Print filename(string) with a colon after it:
>>   if File.file?(entry) && File.readable?(entry)   # If entry is a file, & its readable
>>     File.open(entry, 'r') do |file|    # Open the file, read from it, pass another code block
                                          # which will return the file that we can work with
?>         puts file.gets                 # Get back the first line of the file
>>       end                              # End codeblock
>>     else                               # If the above criteria is unmet, then
?>       puts                             # Print puts a line ending \n
>>     end                                # End codeblock 
>>   end                                  # End codeblock
=begin
VNC-Viewer-5.0.3-Linux-x64: ELF>QA@�1@8 @@@@@@�88@8@@@�+,�+,0,0|0|�0��S,�S|�S|�TT@T@  0,0|0|P�tdD�&D�fD�f����Q�t/lib64/ld-linux-x86-64.so.2GNU      �"�U:I�l��
.kderc: [General]      # This was a file, an invisible file, so we read the 1st line from it
.kde:                  # This was a file, an invisible file, so we read the 1st line from it

    #-------------------
    # - Important NOTE !!!
    #-------------------

# The top shows how we can loop thru and work with these directory entries.

.xsession-errors.old: startkde: Starting up...
.macromedia: 
.irb_history: array = "rre"
.config: 
.: 
copied.txt: 
.bash_logout: # ~/.bash_logout: executed by bash(1) when login shell exits.
.goutputstream-WEYIPW: 
.rvm: 
.local: 
.bash_history: sudo iptables -L
file_to_copy.txt: 
.gem: 
.vnc: 
Baskets Before Restoration: 
.gtkrc-2.0: include "/usr/share/themes/oxygen-gtk/gtk-2.0/gtkrc"
.xchm: [Position]
.Xauthority: twistd0MIT-MAGIC-COOKIE-1��+�h�v�g�<�x�$
.directory: [Dolphin]
.bashrc: # ~/.bashrc: executed by bash(1) for non-login shells.
.fonts.conf: <?xml version='1.0'?>
.mozilla: 
..: 
.pulse-cookie: Q"=:��r&G▒;�����Y�d�d�-��=��W��i�@�
                                                  [��%y���1�6
                                                             k�L*L���� ��7a�}   ����5l�� �ߢ~y~А��(y�L�
zp10its: 
.dmrc: [Desktop]
.zshrc: 
.wireshark: 
.gtk-bookmarks: file:///home/nanob0t/zp10its/xyz%20certs/oscp
doc: 
irb_test_file.txt: 
.mission-control: 
.pulse: 
.recently-used: <?xml version="1.0"?>
.irbrc: 
.thumbnails: 
.adobe: 
.xsession-errors: /home/nanob0t/Desktop was removed, reassigning DESKTOP to homedir
.xchat2: 
.gconf: 
.dbus: 
.zprofile: 
.gstreamer-0.10: 
.profile: # ~/.profile: executed by the command interpreter for login shells.
.bash_profile: 
.viminfo: # This viminfo file was generated by Vim 7.3.
.vimrc: set number
.cache: 
=> ["VNC-Viewer-5.0.3-Linux-x64", ".kderc", ".kde", ".xsession-errors.old", ".macromedia", ".irb_history", ".config", ".", "copied.txt", ".bash_logout", ".goutputstream-WEYIPW", ".rvm",
".local", ".bash_history", "file_to_copy.txt", ".gem", ".vnc", "Baskets Before Restoration", ".gtkrc-2.0", ".xchm", ".Xauthority", ".directory", ".bashrc", ".fonts.conf", ".mozilla", "..",
".pulse-cookie", "zp10its", ".dmrc", ".zshrc", ".wireshark", ".gtk-bookmarks", "doc", "irb_test_file.txt", ".mission-control", ".pulse", ".recently-used", ".irbrc", ".thumbnails", ".adobe",
".xsession-errors", ".xchat2", ".gconf", ".dbus", ".zprofile", ".gstreamer-0.10", ".profile", ".bash_profile", ".viminfo", ".vimrc", ".cache"]
=end 

# Since looping thru these entries is such a common procedure, you can also use:

# Shortcut for saying "take all of the entries and loop thru each one"
>> Dir.foreach('.') {|entry| puts entry}
VNC-Viewer-5.0.3-Linux-x64
.kderc
.kde
.xsession-errors.old
.macromedia
.irb_history
.config
.
copied.txt
.bash_logout
.goutputstream-WEYIPW
.rvm
.local
.bash_history
file_to_copy.txt
.gem
.vnc
Baskets Before Restoration
.gtkrc-2.0
.xchm
.Xauthority
.directory
.bashrc
.fonts.conf
.mozilla
..
.pulse-cookie
zp10its
.dmrc
.zshrc
.wireshark
.gtk-bookmarks
doc
irb_test_file.txt
.mission-control
.pulse
.recently-used
.irbrc
.thumbnails
.adobe
.xsession-errors 
.xchat2
.gconf
.dbus
.zprofile
.gstreamer-0.10
.profile
.bash_profile
.viminfo
.vimrc
.cache
=> nil 


    #-------------------
    # - Creating Directories
    #-------------------

# mkdir is easy !!!
>> Dir.mkdir('temp_dir')      # Create dir 
=> 0
>> Dir.entries('.')           # Confirm temp_dir has been created
=> ["VNC-Viewer-5.0.3-Linux-x64", ".kderc", ".kde", ".xsession-errors.old", ".macromedia", ".irb_history", ".config", ".", "copied.txt", ".bash_logout", ".goutputstream-WEYIPW", ".rvm",
".local", ".bash_history", "file_to_copy.txt", ".gem", ".vnc", "Baskets Before Restoration", ".gtkrc-2.0", ".xchm", ".Xauthority", ".directory", ".bashrc", ".fonts.conf", ".mozilla", "..",
".pulse-cookie", "zp10its", ".dmrc", ".zshrc", "temp_dir", ".wireshark", ".gtk-bookmarks", "doc", "irb_test_file.txt", ".mission-control", ".pulse", ".recently-used", ".irbrc",
".thumbnails", ".adobe", ".xsession-errors", ".xchat2", ".gconf", ".dbus", ".zprofile", ".gstreamer-0.10", ".profile", ".bash_profile", ".viminfo", ".vimrc", ".cache"]
>> Dir.delete('temp_dir')     # Delete dir 
=> 0
>> Dir.entries('.')           # Confirm temp_dir has been created
=> ["VNC-Viewer-5.0.3-Linux-x64", ".kderc", ".kde", ".xsession-errors.old", ".macromedia", ".irb_history", ".config", ".", "copied.txt", ".bash_logout", ".goutputstream-WEYIPW", ".rvm",
".local", ".bash_history", "file_to_copy.txt", ".gem", ".vnc", "Baskets Before Restoration", ".gtkrc-2.0", ".xchm", ".Xauthority", ".directory", ".bashrc", ".fonts.conf", ".mozilla", "..",
".pulse-cookie", "zp10its", ".dmrc", ".zshrc", ".wireshark", ".gtk-bookmarks", "doc", "irb_test_file.txt", ".mission-control", ".pulse", ".recently-used", ".irbrc", ".thumbnails", ".adobe",
".xsession-errors", ".xchat2", ".gconf", ".dbus", ".zprofile", ".gstreamer-0.10", ".profile", ".bash_profile", ".viminfo", ".vimrc", ".cache"]



# THE BELOW LESSONS WILL BE AVAILABLE SOON in atvvk.rb version 0.0.2 (after I get some rest, I DO accept pull requests btw)!!

# Github += https://github.com/nanotechz9l

#--------------------------------------
     '#9 WORKING WITH DATABASES'  
#--------------------------------------

     #-------------------
     # - what is a database? 
     #-------------------
   
    
#-----------------------------------------
     '#10 WORKING WITH NETWORKING SOCKETS'  
#-----------------------------------------

     #-------------------
     # - what is a networking socket? 
     #-------------------
