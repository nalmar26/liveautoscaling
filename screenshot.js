const puppeteer = require('puppeteer');

const screenshot = (async (url='https://google.com') => {
  const browser = await puppeteer.launch({args: ['--no-sandbox',  '--disable-setuid-sandbox']});
  const page = await browser.newPage();
  await page.goto(url);
 return new Promise(async (resolve,reject) => {
  console.log('came here');
  let buffer =  await page.screenshot();
  await browser.close();
  resolve(buffer);
});

});

module.exports = screenshot;
