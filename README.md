# Log Parser
A small command line script for displaying a list summary of a basic log file.

## Requirements
After cloning the repo, check you have installed:
 * [Ruby 3.1.2](https://github.com/rbenv/rbenv)

And before you can use the script install the required gems with:
```
bundle install
```
## Usage
Simply run the `parser.rb` file with the location of the log file as the first argument:
```
ruby parser.rb /path/to/log/file
```
## Example
```
>ruby parser.rb ./logs/webserver.log

Parsing log file './logs/webserver.log':

  *************************
  *    Most Page Views    *
  *************************

  +-----------------------------+
  | View Count | Page URL       |
  | - 90       | /about/2       |
  | - 89       | /contact       |
  | - 82       | /index         |
  | - 81       | /about         |
  | - 80       | /help_page/1   |
  | - 78       | /home          |
  +-----------------------------+

 
 
90|      *            *                                                          
85|                                                                              
80|                                *            *            *            *      
75|                                                                              
70|                                                                              
65|                                                                              
60|                                                                              
55|                                                                              
50|                                                                              
45|                                                                              
40|                                                                              
35|                                                                              
30|                                                                              
25|                                                                              
20|                                                                              
15|                                                                              
10|                                                                              
 5|                                                                              
 0+------------------------------------------------------------------------------
     /about/2     /contact      /index       /about    /help_page/1     /home    
 

  ********************************
  *    Most Unique Page Views    *
  ********************************

  +-----------------------------+
  | View Count | Page URL       |
  | - 23       | /index         |
  | - 23       | /home          |
  | - 23       | /contact       |
  | - 23       | /help_page/1   |
  | - 22       | /about/2       |
  | - 21       | /about         |
  +-----------------------------+

 
 
24|      *            *            *            *                                
22|                                                          *            *      
20|                                                                              
18|                                                                              
16|                                                                              
14|                                                                              
12|                                                                              
10|                                                                              
 8|                                                                              
 6|                                                                              
 4|                                                                              
 2|                                                                              
 0+------------------------------------------------------------------------------
      /index        /home      /contact   /help_page/1   /about/2      /about 
```