# Master Thesis Dataset

This repository contains
- the dataset created during the evaluation
- a screenshot of the final metrics page for the evaluation presentation in the application
- the setup for the performance evaluation

Project
- [revealjs-analytics-plugin](https://github.com/ManhTin/revealjs-analytics-plugin)
- [revealjs-analytics](https://github.com/ManhTin/revealjs-analytics)


## Performance Evaluation

Requires node.js and pnpm and an installation of Google Chrome for the Lighthouse audit.


Install the lighthouse node CLI
```bash
pnpm install
```

Make the scripts executable
```bash
chmod +x scripts/lighthouse_w_plugin.sh
chmod +x scripts/lighthouse_wo_plugin.sh
```

### Get score with the plugin enabled
Start the presentation locally with the plugin enabled and run the lighthouse audit

Run the script which will generate a lighthouse report 20x and save it in the `lighthouse_performance` directory.
```bash
./scripts/lighthouse_w_plugin.sh
```


### Get score with the plugin disabled
Stop the presentation server and comment out the plugin script import and initialization in the `Reveal.initialize` method.

Start the presentation locally with the plugin disabled and run the lighthouse audit

Run the script which will generate a lighthouse report 20x and save it in the `lighthouse_performance` directory.
```bash
./scripts/lighthouse_wo_plugin.sh
```
