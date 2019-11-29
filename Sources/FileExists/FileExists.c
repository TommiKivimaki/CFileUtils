#include <sys/stat.h>
#include "include/FileExists.h"

bool fileExists(const char *path) {
  struct stat buf;
  int result = stat(path, &buf);
  
  if (result == -1) {
    return false;
  } else {
    if (S_ISREG(buf.st_mode)) {
      return true;
    } else {
      return false;
    }
  }
}
