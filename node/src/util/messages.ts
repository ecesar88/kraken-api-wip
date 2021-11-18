import colors from "colors";

const messages = {
  error: (message: unknown): void => {
    return console.log(
      `${colors.bold.white.bgRed(`[   ERROR  ] =>   ${message}`)}`
    );
  },

  warn: (message: unknown): void => {
    return console.log(`${colors.bold.yellow(`[   WARN   ] =>   ${message}`)}`);
  },

  info: (message: unknown): void => {
    return console.log(`${colors.bold.blue(`[   INFO   ] =>   ${message}`)}`);
  },
};

export default messages;
