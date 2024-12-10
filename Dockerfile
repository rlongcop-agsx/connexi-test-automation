# Use the appropriate Docker-Android image based on your required Android version
FROM budtmo/docker-android:emulator_11.0

# Copy the APK file (adjust the path if needed)
COPY app/TEST-ef1d159d-63bf-4e8a-93ce-d5d75b4d6ace.apk /app/TEST-ef1d159d-63bf-4e8a-93ce-d5d75b4d6ace.apk

# Expose only the Appium port (since you won't need the VNC or emulator ports)
EXPOSE 4723

# Set environment variables
ENV DEVICE="Samsung Galaxy S6" \
    APPIUM=true \
    CONNECT_TO_GRID=true \
    APPIUM_HOST="127.0.0.1" \
    APPIUM_PORT=4723 \
    SELENIUM_HOST="172.17.0.1" \
    SELENIUM_PORT=4444 \
    MOBILE_WEB_TEST=true