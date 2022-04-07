## Autodeploy code to server after git commit

### 1. install webhook from `https://github.com/adnanh/webhook`
For ubuntu/dabian simply run `sudo apt install webhook` otherwise follow instructions on the repo.


### 2. Add an webhook on github
- On github repo page, click on `settings` -> `webhooks` -> `add webhook`
- Add payload url as `http://<server ip>:9000/hooks/redeploy-app` (9000 is the default port and 'redeploy-app' is the webhook id in hooks.json file)
- Set content-type as `application/json`
- Select `Just the push event` under Which events would you like to trigger this webhook?
- Check active
- Save

### 3. Create hooks.json and redeploy script
Create a folder anywhere outside the project dir and create the 2 files: hooks.json and redeploy.sh (follow example)

### 4. Make the redeploy script executable
```bash
chmod +x redeploy.sh
```

### 5. Add a service to run the webhook
- Add the folowing in `/etc/systemd/system/webhook.service`
- Change permission of `webhoook.service` file: `sudo chmod 644 webhook.service`
- Start the service `sudo systemctl start webhook`
- Enable the service to autostart at startup `sudo systemctl enable webhook`
- Check the service status `sudo systemctl status webhook`