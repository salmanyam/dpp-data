import os

import re
import sys

def removeComments(text):
    """ remove c-style comments.
        text: blob of text with comments (can include newlines)
        returns: text with comments removed
    """
    pattern = r"""
                            ##  --------- COMMENT ---------
           //.*?$           ##  Start of // .... comment
         |                  ##
           /\*              ##  Start of /* ... */ comment
           [^*]*\*+         ##  Non-* followed by 1-or-more *'s
           (                ##
             [^/*][^*]*\*+  ##
           )*               ##  0-or-more things which don't start with /
                            ##    but do end with '*'
           /                ##  End of /* ... */ comment
         |                  ##  -OR-  various things which aren't comments:
           (                ##
                            ##  ------ " ... " STRING ------
             "              ##  Start of " ... " string
             (              ##
               \\.          ##  Escaped char
             |              ##  -OR-
               [^"\\]       ##  Non "\ characters
             )*             ##
             "              ##  End of " ... " string
           |                ##  -OR-
                            ##
                            ##  ------ ' ... ' STRING ------
             '              ##  Start of ' ... ' string
             (              ##
               \\.          ##  Escaped char
             |              ##  -OR-
               [^'\\]       ##  Non '\ characters
             )*             ##
             '              ##  End of ' ... ' string
           |                ##  -OR-
                            ##
                            ##  ------ ANYTHING ELSE -------
             .              ##  Anything other char
             [^/"'\\]*      ##  Chars which doesn't start a comment, string
           )                ##    or escape
    """
    regex = re.compile(pattern, re.VERBOSE|re.MULTILINE|re.DOTALL)
    noncomments = [m.group(2) for m in regex.finditer(text) if m.group(2)]

    return "".join(noncomments)

def commentRemover(text):
    def replacer(match):
        s = match.group(0)
        if s.startswith('/'):
            return " " # note: a space and not an empty string
        else:
            return s
    pattern = re.compile(
        r'//.*?$|/\*.*?\*/|\'(?:\\.|[^\\\'])*\'|"(?:\\.|[^\\"])*"',
        re.DOTALL | re.MULTILINE
    )
    return re.sub(pattern, replacer, text)

input_funcs = [
    "scanf",
    "fscanf",
    "freaduntil",
    "fread",
    "read",
    "fgets",
    "recv",
    "receive",
    "getline",
    "readuntil",
    "readline",
    "recvline",
    "recvuntil",
    "getc",
    "sscanf",
    "sgets",
    "readdir",
    "readlink",
    "sreaddir",
    "pread64",
    "readdir64",
    "readv",
    "recvmsg"
]


def has_input_func(a_filename):
    with open(a_filename) as f:
        uncmtFile = commentRemover(f.read())
        lines = uncmtFile.splitlines()

        for line in lines:
            #print(line)
            for ifunc in input_funcs:
                if ifunc in line.strip():
                    print(ifunc)
                    return True

    return False


input_files = list()

interested_cwes = ['CWE121', 'CWE122', 'CWE124', 'CWE126', 'CWE127']
for path, currentDirectory, files in os.walk("testcases"):
    for file in files:
        if file == "main.cpp" or \
                file == "main_linux.cpp" or \
                file == "Makefile" or \
                file == "CMakeCache.txt" or \
                file == "CMakeLists.txt" or \
                file == "link.txt" or \
                file == "DependInfo.cmake" or \
                file == "build.make" or \
                file == "compiler_depend.make" or \
                file == "compiler_depend.ts" or \
                file == "testcases.h":
            continue

        explore_path = False
        for cwe in interested_cwes:
            # print(cwe)
            if cwe in path:
                explore_path = True
                break

        if not explore_path:
            continue

        filename = os.path.join(path, file)
        retval = has_input_func(filename)

        if retval:
            input_files.append(file)
            print(filename)

print(len(input_files))

