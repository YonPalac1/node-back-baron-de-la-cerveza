import { pool } from "../database/config/config.js";

export const getProducts = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM products");
    res.status(200).json({
      status: 200,
      message: 'ok',
      data: rows
    });
  } catch (error) {
    res.status(404).json({
      message: "something was wrong",
    });
  }
};
export const getCategories = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM categories");
    res.status(200).json({
      status: 200,
      message: 'ok',
      data: rows
    });
  } catch (error) {
    res.status(404).json({
      message: "something was wrong",
    });
  }
};
export const getBrands = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM brands");
    res.json(rows);
  } catch (error) {
    res.status(404).json({
      message: "something was wrong",
    });
  }
};
