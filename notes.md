- Use *man* to see the help/manual for any function (man ls)

- Use *curl* to transfer data from or to a server
- *curl "URL"* stdout data from URL 
- *curl -o output.txt "URL"* store data from URL in output.txt

- Use *mkdir* to create a directory (mkdir NEW_DIRECTORY)

- Use *cd* to change directory (cd DIR_NAME)
- (cd ..) to go up a level

- Use *ls* to list dir contents

- Use *touch* to create a new file (touch NEW_FILE)
- Use *touch file1 file2 file3* to create multiple files
- Use *touch {1..100}* to create 100 files

- Use *rm* to remove a file (rm OLD_FILE)
- Use *rm -R* to delete a directory recursively (Delete the directory, and all folders and files it contains) (rm OLD_DIR)

- Use *ls -la* for long listing format and to not ignore entries starting with . (See man for more info)

- Use *touch -c* to manipulate an already existing file 
- Use *touch -d* to set file date

- Use *chmod* to set permissions
- *chmod 777* sets rwx to all: owner, group, other 
- rwx = read, write, execute
- see man for more details

A quick and easy way to list a file's permissions are with the long listing (-l) option of the ls command. For example, to view the permissions of file.txt, you could use the command:
ls -l file.txt

...which displays output that looks like the following:
-rwxrw-r-- 1   hope   hopestaff  123   Feb 03 15:36   file.txt

-	The first character represents the file type: "-" for a regular file, "d" for a directory, "l" for a symbolic link.
rwx	The next three characters represent the permissions for the file's owner: in this case, the owner may read from, write to, ore xecute the file.
rw-	The next three characters represent the permissions for members of the file group. In this case, any member of the file's owning group may read from or write to the file. The final dash is a placeholder; group members do not have permission to execute this file.
r--	The permissions for "others" (everyone else). Others may only read this file.
1	The number of hard links to this file.
hope	The file's owner.
hopestaff	The group to whom the file belongs.
123	The size of the file in blocks.
Feb 03 15:36	The file's mtime (date and time when the file was last modified).


- Use *ln* to create a symbolic link
- *ln -s source_file symbolic_link*
- A symbolic link, also known as a symlink or soft link, is a special type of file that points to another file or directory.

- Use *tar* to create an archive
- tar -cf archive.tar *   (will create an archive containing everything in current directory where * is a wildcard)

- Use *find filename* to search for a file
- find -name '1*' =  find all files that start with 1

- *echo hello > filename* print hello to specified filename

- *cat filename* print file contents on standard output 
- *cat file1 file2 file3* can be used with multiple files
- see man for more info 

- *grep* searches for patterns in each file
- grep hello * : searches all files in dir for string hello

- *cut* remove sections from each line of files 
= use flag '-d' to specify field delimiter 
= use flag '-f' to select only these fields
- *cut -d "," -f1 file1*  returns first section before comma on each line

- *tr a b* replace all a chars with b 
- *tr az bx* replace a with b AND replace z with x
- works for single chars, you cannot do patterns
- use *sed* for patterns

- *sed 's/ /,/'* replace first space with comma
-  here ^ s means substitute
- *sed 's/a/b/g'* replace all a with b 
-  here       ^ g means global
- *sed 's/a/b/2'* replace the second occurence
- *sed 's/a/b/3g'* replace all from third occurence onwards
- *sed 's/Jonny/Alex/'* replace first instance of Jonny with Alex

- Use *jq* to transform JSON in various ways 
- see man for more info 
- *curl "URL | jq ." will return data with JSON formatting 

- Use *wc* to print newline, word, and byte counts for each file
- *wc -l* will just print the number of lines