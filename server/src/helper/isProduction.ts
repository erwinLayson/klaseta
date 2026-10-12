import {getEnv} from "./getEnv.js"

export const isProduction = (): boolean => {
    return getEnv("NODE_ENV") === "production";
};