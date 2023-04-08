#!/bin/bash
sudo apt update
sudo apt install mongodb -y
sudo systemctl enable --now mongodb