# Deployment Guide: Fake News Detector on Render

This guide explains how to deploy your Fake News Detector application to **Render** for free using Docker.

## Prerequisites
1.  A **GitHub** account.
2.  A **Render** account (sign up at [render.com](https://render.com/)).

## Step 1: Push to GitHub
1.  Create a new repository on GitHub (e.g., `fake-news-detector`).
2.  Push your local code to this repository:
    ```bash
    git remote add origin https://github.com/YOUR_USERNAME/fake-news-detector.git
    git branch -M main
    git push -u origin main
    ```

## Step 2: Deploy on Render
1.  Log in to your Render dashboard.
2.  Click **New +** and select **Web Service**.
3.  Connect your GitHub account and select your `fake-news-detector` repository.
4.  **Configuration**:
    - **Name**: Choose a name (e.g., `fake-news-app`).
    - **Region**: Select the one closest to you.
    - **Branch**: `main` (or `master`).
    - **Runtime**: **Docker** (Render should auto-detect the `Dockerfile`).
    - **Instance Type**: **Free**.
5.  Click **Create Web Service**.

## Verification
- Render will build the Docker image (this may take a few minutes).
- Once deployed, you will see a URL like `https://fake-news-app.onrender.com`.
- Visit the URL and test the prediction feature.

## Note on Performance
- The Free Tier on Render spins down after 15 minutes of inactivity. The first request after inactivity may take ~30 seconds to load.
- The application uses Python 3.7 to ensure compatibility with the trained models.
