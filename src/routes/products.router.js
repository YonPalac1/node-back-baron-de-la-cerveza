import { Router } from "express";
import { getBrands, getCategories, getProducts } from "../controllers/products.controllers.js";

const router = Router()
router.get('/products', getProducts)
router.get('/categories', getCategories)
router.get('/brands', getBrands)

export default router