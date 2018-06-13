class Connect
  prop prefix default: '/powerdir/'

  def timeout miliseconds=100, callback=null
    return Promise.new do |resolve|
      return window.setTimeout(&, miliseconds) do 
        callback && callback()
        resolve()

  def async callback
    self.timeout 0, callback

  def fetchData url, json=false
    const res = await window.fetch prefix + url
    return res.json if json
    return res.text

export var Connect = Connect.new