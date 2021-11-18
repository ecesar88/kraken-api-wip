import { PrismaClient } from "@prisma/client";
import faker from "faker";
import messages from "../../src/util/messages";
import device from "./device";

const prismaClient = new PrismaClient();

(async () => {
  await device(prismaClient).catch((e) => console.log(e));
})();
