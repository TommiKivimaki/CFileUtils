#include <sys/stat.h>
#include "include/DirectoryExists.h"

bool directoryExists(const char *path) {
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

