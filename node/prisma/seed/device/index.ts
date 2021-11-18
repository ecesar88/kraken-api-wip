import { PrismaClient } from "@prisma/client";
import faker from "faker";
import messages from "../../../src/util/messages";

async function main(client: PrismaClient) {
  try {
    const device = await client.device.create({
      data: {
        brand: "motorola",
        codename: "astralis",
        deprecated: false,
        name: "g4",
        supportedTypesId: "motorola",
        supported_types: {
          create: {
            deviceCodename: "motorola",
            gapps: true,
            vanila: true,
          },
        },
        supported_versions: {
          create: {
            eleven: true,
            twelve: true,
            deviceCodename: "motorola",
          },
        },
        xda_thread: faker.internet.url(),
        repositories: {
          create: [],
        },
      },
    });

    messages.info("Successfully executed seed");
    console.log(device);
  } catch (error) {
    messages.error(error);
  }
}

export default main;
