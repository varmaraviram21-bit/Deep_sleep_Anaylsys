# Deep Sleep Data Collection UI
# Static frontend served by Nginx

FROM nginx:alpine

# Remove the default Nginx landing page
RUN rm -rf /usr/share/nginx/html/*

# Copy our UI and make it the default page
COPY deep_sleep_data_collection_ui.html /usr/share/nginx/html/index.html

# Nginx listens on port 80 inside the container
EXPOSE 80

# Keep Nginx running in the foreground
CMD ["nginx", "-g", "daemon off;"]
