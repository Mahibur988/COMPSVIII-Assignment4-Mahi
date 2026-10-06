# Step 1: Use Node.js 16 as the base image
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install the application dependencies
RUN npm install

# Step 5: Copy all application files into the container
COPY . .

# Step 6: Expose port 3000 for the application
EXPOSE 3000

# Step 7: Start the application
CMD ["npm", "start"]