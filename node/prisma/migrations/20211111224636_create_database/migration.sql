-- CreateTable
CREATE TABLE "Repository" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "deviceCodename" TEXT,
    CONSTRAINT "Repository_deviceCodename_fkey" FOREIGN KEY ("deviceCodename") REFERENCES "Device" ("codename") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "AndroidVersions" (
    "deviceCodename" TEXT NOT NULL,
    "eleven" BOOLEAN NOT NULL,
    "twelve" BOOLEAN NOT NULL
);

-- CreateTable
CREATE TABLE "SupportedTypes" (
    "deviceCodename" TEXT NOT NULL,
    "gapps" BOOLEAN NOT NULL,
    "vanila" BOOLEAN NOT NULL
);

-- CreateTable
CREATE TABLE "Device" (
    "codename" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "brand" TEXT NOT NULL,
    "xda_thread" TEXT NOT NULL,
    "deprecated" BOOLEAN NOT NULL,
    "supportedTypesId" TEXT NOT NULL,
    "supportedTypesDeviceCodename" TEXT NOT NULL,
    "androidVersionsDeviceCodename" TEXT NOT NULL,
    CONSTRAINT "Device_androidVersionsDeviceCodename_fkey" FOREIGN KEY ("androidVersionsDeviceCodename") REFERENCES "AndroidVersions" ("deviceCodename") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Device_supportedTypesDeviceCodename_fkey" FOREIGN KEY ("supportedTypesDeviceCodename") REFERENCES "SupportedTypes" ("deviceCodename") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "AndroidVersions_deviceCodename_key" ON "AndroidVersions"("deviceCodename");

-- CreateIndex
CREATE UNIQUE INDEX "SupportedTypes_deviceCodename_key" ON "SupportedTypes"("deviceCodename");

-- CreateIndex
CREATE UNIQUE INDEX "Device_codename_key" ON "Device"("codename");
