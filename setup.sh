#!/bin/bash

read -p "Enter your app name: " APP_NAME

npm create vite@latest $APP_NAME -- --template react-ts
cd $APP_NAME

npm install
npm install tailwindcss @tailwindcss/vite
npm install -D tsx # for running .ts files

echo 'import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  plugins: [react(), tailwindcss()],
});' > vite.config.ts

echo '@import "tailwindcss";' > src/index.css

npm run dev
