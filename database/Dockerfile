# Use the official MySQL image as the base
FROM mysql:9.1.0

# Create a directory for the initialization script
WORKDIR /docker-entrypoint-initdb.d

# Copy the SQL script to the initialization directory
COPY init_script.sql .

# Define arguments to capture environment variables
ARG SAMMASKE_DB_NAME
ARG SAMMASKE_DB_USER
ARG SAMMASKE_DB_PASSWORD

# Replace placeholders with environment variables using sed
RUN sed -i "s|\${SAMMASKE_DB_NAME}|$SAMMASKE_DB_NAME|g" init_script.sql \
    && sed -i "s|\${SAMMASKE_DB_USER}|$SAMMASKE_DB_USER|g" init_script.sql \
    && sed -i "s|\${SAMMASKE_DB_PASSWORD}|$SAMMASKE_DB_PASSWORD|g" init_script.sql
