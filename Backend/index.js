const express = require("express");
const fs = require("fs");
const cors = require("cors");
const puraRoute = require("./route/puraRoute");
const app = express();
app.use(cors());

app.use(express.json());

const uploadsDir = "./uploads";
if (!fs.existsSync(uploadsDir)) {
  fs.mkdirSync(uploadsDir);
}

app.use(puraRoute);
app.use("/uploads", express.static("uploads"));

app.listen(process.env.PORT, () => {
  console.log(`Server is running`);
});
