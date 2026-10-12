import mysql from "mysql2/promise";
import {
    getEnv,
    isProduction
} from "../helper/index.js";


let pool: mysql.Pool;

export const initDB = () => {
    pool ??= mysql.createPool({
        host: getEnv("DB_HOST"),
        user: getEnv("DB_USER"),
        password: getEnv("DB_PASSWORD"),
        database: getEnv("DB_NAME"),
        port: parseInt(getEnv("DB_PORT")),

        ...(isProduction() ? {
                ssl: {
                    rejectUnauthorized: true,
            }
        }: {})

    })


    return pool;
}
