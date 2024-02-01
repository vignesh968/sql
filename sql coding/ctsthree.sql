create database ctsthree;
use ctsthree;
-- 1. **CONCAT()**: Concatenates two or more strings together.
   SELECT CONCAT('First ', 'Second') AS concatenated_string;
   

-- 2. **CONCAT_WS()**: Concatenates strings with a specified separator.
    SELECT CONCAT_WS(', ', 'John', 'Doe') AS concatenated_string;

-- 3. **SUBSTRING() or SUBSTR()**: Extracts a substring from a string.
  SELECT SUBSTRING('Hello World', 1, 5) AS substring_result;

-- 4. **LENGTH() or CHAR_LENGTH()**: Returns the length of a string.
   SELECT LENGTH('Hello') AS string_length;

-- 5. **LOWER()**: Converts a string to lowercase.
   SELECT LOWER('Hello') AS lowercase_string;
   

-- 6. **UPPER()**: Converts a string to uppercase.
   SELECT UPPER('Hello') AS uppercase_string;
   

-- 7. **TRIM()**: Removes specified prefixes or suffixes from a string.

  SELECT TRIM(LEADING '0' FROM '00123') AS trimmed_string;

-- 8. **LTRIM()**: Removes leading spaces from a string.
   SELECT LTRIM('   Hello') AS trimmed_string; 

-- 9 **RTRIM()**: Removes trailing spaces from a string.
   SELECT RTRIM('Hello   ') AS trimmed_string;
   

-- 10. **REPLACE()**: Replaces occurrences of a specified substring within a string.
    
    SELECT REPLACE('Hello, world!', 'world', 'MySQL') AS replaced_string;
    

-- 11. **LOCATE()**: Returns the position of a substring within a string.
    SELECT LOCATE('l', 'Hello') AS position;
    

-- 12. **LEFT()**: Extracts a specified number of characters from the left of a string.
    SELECT LEFT('Hello', 2) AS left_string;
    

-- 13. **RIGHT()**: Extracts a specified number of characters from the right of a string.
    SELECT RIGHT('Hello', 2) AS right_string;
    

-- 14. **REVERSE()**: Reverses a string.
    SELECT REVERSE('Hello') AS reversed_string;
    
-- 15. **UCASE()**: Converts a string to uppercase.
    SELECT UCASE('hello') AS uppercase_string;

-- 16. **LCASE()**: Converts a string to lowercase.
    SELECT LCASE('HELLO') AS lowercase_string;

-- 17. **CHAR_LENGTH()**: Returns the number of characters in a string.
    SELECT CHAR_LENGTH('Hello') AS character_count;

-- 18. **MID()**: Extracts a substring from a string.
    SELECT MID('Hello', 2, 3) AS substring_result;

-- 19. **INSERT()**: Inserts a substring into a string.
    
    SELECT INSERT('Hello', 3, 0, 'INSERTED ') AS modified_string;
    
-- pa (‘123’,5 as size of whole string’,’what charater to add)

-- 20. **LPAD()**: Pads a string to a certain length with another string.
    SELECT LPAD('123', 5, '0') AS padded_string;
    

-- 21. **RPAD()**: Pads a string to a certain length with another string on the right side.
    
    SELECT RPAD('123', 5, '0') AS padded_string;
    

-- 22. **TRIM()**: Removes specified prefixes or suffixes (or spaces by default) from a string.
    SELECT TRIM('  Hello  ') AS trimmed_string;

-- 23. **SPACE()**: Returns a string of the specified number of spaces.
    
    SELECT SPACE(5) AS spaces;
    

-- 24. **ASCII()**: Returns the ASCII value of the leftmost character of a string.
    SELECT ASCII('A') AS 'A' ,ascii('Z') as 'Z',
    ASCII('a') AS 'a' ,ascii('z') as 'z';
    

-- 25. **CHAR()**: Returns the character based on the ASCII value.
    SELECT CHAR(90) AS 'character';
    

-- 26. **REPEAT()**: Repeats a string a specified number of times.
    SELECT REPEAT('Hello ', 3) AS repeated_string;
    

-- 27. **FIND_IN_SET()**: Returns the position of a string within a comma-separated list.
    SELECT FIND_IN_SET('apple', 'apple,banana,grape') AS position;
    

-- 28. **FIELD()**: Returns the index (position) of the first occurrence of a value in a list of values.
    SELECT FIELD('banana', 'apple', 'banana', 'grape') AS position;
    

-- 29. **STRCMP()**: Compares two strings.
    SELECT STRCMP('hello', 'world') AS comparison_result;
    -- a=hello, b=world
	-- a=b ->0,a>b ->1 a<b ->-1
    
-- 30. **SUBSTRING_INDEX()**: Returns a substring from a string before a specified number of occurrences of a delimiter.
    SELECT SUBSTRING_INDEX('www.mysql.postsql.com', 's', 2) AS sub_string;
    

-- 31. **INSTR()**: Returns the position of the first occurrence of a substring in a string.
    SELECT INSTR('hello world', 'world') AS position;
    

-- 32. **REGEXP**: Allows pattern matching using regular expressions.
    
    SELECT 'MySQL' REGEXP 'My' AS is_match;

-- 33. **LEFT() and RIGHT() with LOCATE()**:
   
    SELECT LEFT('Hello world', LOCATE(' ', 'Hello world')) AS left_substring;
    SELECT RIGHT('Hello world', LENGTH('Hello world') - LOCATE(' ', 'Hello world')) AS right_substring;
