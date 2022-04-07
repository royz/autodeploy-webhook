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

### 4. 
