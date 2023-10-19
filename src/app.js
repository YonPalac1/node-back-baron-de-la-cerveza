import express from "express";
import productsRouter from "./routes/products.router.js";
import cors from "cors"; 

const app = express();
app.use(cors())
app.use(express.json());

app.use("/api", productsRouter);

app.use((req, res, next) => {
  res.status(404).json({
    message: "endpoint not found",
  });
});

export default app;
