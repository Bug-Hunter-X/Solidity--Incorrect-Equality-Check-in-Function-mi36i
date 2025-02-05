function myFunc(a, b) {
  if (a == b) { //bug: should use === for strict equality
    return true;
  } else {
    return false;
  }
}