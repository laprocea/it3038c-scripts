Scripting Languages
Professor Daniel Leonard
Laprocea

                                        Project 2: README
<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>


- The purpose behind this project is to call to a Powershell Script Module when in need of
  a password that the creator has previously defined with an acceptable level of security. By typing the predefined command [RandoPW], a password is generated for use. 

- The creator can determine his / her optimal character length and specific instruction(s)
  in order to allow the generator to function. Initial consideration was sought to comply with NIST Special Publication 800-63B where all special characters are permitted with a minimum set of 8 character length passwords. This would also mean that characters would randomize and not be in any sequential order. 
  
- However, this function has been further modified to represent the complexity required for DoD
  standards (DISA Security Technical Implementation Guide) as applied from NIST SP 800-171. A user will be promped to generate a (minimum) 14-character length password with a blend of upper / lower case letters, numbers and special characters.  

- The fourteen character password is crafted to generate the following:
    - 3 Upper-case letters
    - 5 Lower-case letters
    - 3 Numbers
    - 3 Special Characters (for purposes here, the limit is reduced to [ $-%-&-?-@-#-*-! ])

- 'tochararray' is what turns the string into Unicode
- Operators in play include 'le' (less than or equal to) and '++' for incrementing the characters
- The operator 'join' concatenates the strings (result) into one. 

- By using separate character arrays, password criteria can be easily dileneated as necessary.


<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>

Citation:

    VirtualCoin CISSP, P. M. P. (2021, June 24). Tutorial Powershell - Generate Random Passwords. TechExpert. Retrieved October 29, 2022, from https://techexpert.tips/powershell/powershell-generate-random-passwords/ 

<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
