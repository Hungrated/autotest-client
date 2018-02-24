// 引入官方 webdriver client 包
var wd = require('macaca-wd')

// 引入断言库
var expect = require('chai').expect

var opn = require('opn')
var path = require('path')

// 定义 webdriver client 要链接的服务端 host 和 port
var remoteConfig = {
  host: 'localhost',
  port: 3456 // Macaca server 默认使用 3456 端口
}

// 后面 driver 直接使用链式调用即可
var driver = wd.promiseChainRemote(remoteConfig)

// 桌面端配置
const pcOpts = {
  platformName: 'desktop', // iOS, Android, Desktop
  browserName: 'chrome'    // Chrome, Electron
}

describe('demo.test.js', function () {
  // 设定测试时间
  this.timeout(5 * 60 * 1000)

  // 测试前的初始化操作
  before(function () {
    return driver.init(pcOpts)
  })

  // 每项测试结束后的操作
  beforeEach(function () {
    console.log('before new test sample')
  })

  // 每项测试结束后的操作
  afterEach(function () {
    return driver.sleep(1000)
  })

  // 所有测试结束后的操作
  after(function () {
    opn(path.join(__dirname, '..', 'reports', 'index.html'));
    return driver.sleep(1000).quit()
  })

  describe('test demo', function () {
    // 测试套件内容
    it('#1 should ...'/* 测试用例名称 */, function () {
      // 测试用例内容
      const initialURL = 'https://www.baidu.com'
      return driver
        .get(initialURL)
        .sleep(10 * 1000)
        .title()
        .then((title) => {
          console.log(`title: ${title}`)
        })
        .url()
        .then((url) => {
          console.log(`url: ${url}`)
        })
        .refresh().sleep(10 * 1000)
    })

    it('#2 should ...'/* 测试用例名称 */, function () {
      // 测试用例内容
      const initialURL = 'https://www.baidu.com'
      return driver.get(initialURL).sleep(3000)
    })
  })
})
