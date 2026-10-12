import app from "./app.js";

import { initDB } from "./config/database.js";
import { checkDBConn, getEnv } from "./helper/index.js";

const PORT = parseInt(getEnv("PORT")) || 3001;

checkDBConn(initDB).then(() => {
  console.log("Database connection check completed.");
}).catch((err) => {
  console.error("Error during database connection check:", err);
  process.exit(1); // Exit the process if the database connection check fails
});

const server = app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
})

server.on("error", (error) => {
  console.error("Error occurred:", error);
});