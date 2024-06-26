# Dockerfile for NextJS
# https://hub.docker.com/r/oven/bun/tags

########################################
# --- Base ---
########################################
FROM oven/bun:alpine as base

# Set working directory
WORKDIR /frontend

# Install yarn (to fix bun run bug)
RUN apk update && \
    apk add --no-cache curl bash yarn

########################################
# --- Builder Stage ---
########################################
FROM base AS builder

# Install packages
RUN bunx create-next-app@latest . --ts --tailwind --eslint --app --src-dir --import-alias "@/*" --use-bun && \
    bunx shadcn-ui@latest init -d && \
    bun add uploadthing @uploadthing/react dotenv lucide-react @clerk/nextjs && \
    bun add --save @stripe/react-stripe-js @stripe/stripe-js && \
    rm -rf node_modules

########################################
# --- Runtime Stage ---
########################################
FROM base AS runtime

# Copy files from builder
COPY --from=builder /frontend/ /frontend/

# run server
CMD ["sleep", "infinity"]
