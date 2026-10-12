import type{ Pool } from "mysql2/promise";

export const checkDBConn = async (initDB: () => Pool) => {
    const pool = initDB();
    const conn = await pool.getConnection();

    try{
        await conn.ping();
        console.log("Database connection is successful.");
    }catch(err) {
        console.error("Database connection failed:", err);
    }finally {
        conn.release();
    }
}