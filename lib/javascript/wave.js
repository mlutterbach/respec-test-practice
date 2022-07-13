// Receive a string or an empty value " "
function wave(str) {

  let arr = [];

  // Iterates over the string
  for (let i = 0; i < str.length; i++) {
    // variable with the value by index from the letter of the string
    let letter = str[i];
    // condition to see if the value of the original string it is ecual to a space
    if (letter === " ") {
      // this is to skip the value from the condition in this case " "
      continue;
    } else {
      arr.push(str.slice(0, i) + letter.toUpperCase() + str.slice(i + 1));
    }
  }
  return arr;
}
