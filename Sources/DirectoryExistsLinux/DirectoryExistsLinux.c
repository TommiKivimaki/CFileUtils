#include <stdbool.h>
#include <sys/stat.h>
#include "include/DirectoryExistsLinux.h"


bool directoryExistsLinux(char path) {
  struct stat s;
  int result = stat(path, &s);
  
  if (result == -1) {
    return false;
  } else {
    if(S_ISDIR(s.st_mode)) {
      return true;
    } else {
      return false;
    }
  }
}

