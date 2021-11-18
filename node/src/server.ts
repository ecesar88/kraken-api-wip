import express from "express";
import { router } from "./router";
import dotenv from "dotenv";
import morgan from "morgan";
import helmet from "helmet";

const app = express();

dotenv.config();
const PORT = process.env.PORT;
const FALLBACK_PORT = 5000;

app.use(express.json());
app.use(morgan("dev"));
app.use(helmet());

app.use(router);

app.listen(PORT || FALLBACK_PORT, () => {
  console.log(`Listening on port ${PORT ?? FALLBACK_PORT}`);
});
