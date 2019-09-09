var db = require('./db.js')

function Api(news) {
    this.id = news.id
    this.title = news.title
    this.add_time = news.add_time
    this.content = news.content
    this.zhaiyao = news.zhaiyao
    this.click = news.click
    this.img_url = news.img_url
}

Api.addNews = function (news, callback) {
    var selectSql = 'insert into news (id,title,add_time,content,zhaiyao,click,img_url) values (null,?,?,?,?,?,?)'
    db.query(selectSql, [news.id,news.title,news.add_time,news.content,news.zhaiyao,news.click,news.img_url], function (err, result) {
        console.log(err)
        if (err) {
            return callback(err)
        }
        callback(err,result)
    })
}

Api.updataNews = function (news, callback) {
    var selectSql = 'update news set'
    var param = new Array()
    if (news.title && param.length == 0) {
        selectSql += ' title=? '
        param[param.length] = news.title
    }
    if (news.add_time && param.length == 0) {
        selectSql += ' add_time=? '
        param[param.length] = news.add_time
    } else if (news.add_time && param.length != 0) {
        selectSql += ', add_time=? '
        param[param.length] = news.add_time
    }

    if (news.content && param.length == 0) {
        selectSql += ' content=? '
        param[param.length] = news.content
    } else if (news.content && param.length != 0) {
        selectSql += ', content=? '
        param[param.length] = news.content
    }

    if (news.zhaiyao && param.length == 0) {
        selectSql += ' zhaiyao=? '
        param[param.length] = news.zhaiyao
    } else if (news.zhaiyao && param.length != 0) {
        selectSql += ', zhaiyao=? '
        param[param.length] = news.zhaiyao
    }

    if (news.click && param.length == 0) {
        selectSql += ' click=? '
        param[param.length] = news.click
    } else if (news.click && param.length != 0) {
        selectSql += ', click=? '
        param[param.length] = news.click
    }

    if (news.img_url && param.length == 0) {
        selectSql += ' img_url=? '
        param[param.length] = news.img_url
    } else if (news.img_url && param.length != 0) {
        selectSql += ', img_url=? '
        param[param.length] = news.img_url
    }

    selectSql += ' where id=? '
    param[param.length] = news.id
    db.query(selectSql, param, function (err, res) {
        if (err) {
            return callback(err)
        }
        callback(err, res)
    })
}

Api.queryNews = function (userId, callback) {
    var selectSql = 'SELECT id,title,click,add_time,content FROM `news` WHERE id=?'
    db.query(selectSql,[userId], function (err, res) {
        if (err) {
            return callback(err)
        }
        callback(err, res)
    })
}

Api.selectAll = function (callback) {
    var selectSql = "select * from news"
    db.query(selectSql,function (err, data) {
        if (err) {
            return callback(err)
        }
        callback(err, data)
    })
}

Api.getimages = function (userId, callback) {
    var selectSql = 'SELECT id,title,img_url,zhaiyao FROM `images` WHERE categoryid=?'
    db.query(selectSql, [userId], function (err, res) {
        if (err) {
            return callback(err)
        }
        callback(err, res)
    })
}

Api.getimagecategory = function (callback) {
    var selectSql = "select categoryid as id,category as title from images GROUP BY categoryid,category"
    db.query(selectSql, function (err, data) {
        if (err) {
            return callback(err)
        }
        callback(err, data)
    })
}
Api.getthumimages = function (userId, callback) {
    var selectSql = 'SELECT src FROM `imggroup` WHERE groupId=?'
    db.query(selectSql, [userId], function (err, res) {
        if (err) {
            return callback(err)
        }
        callback(err, res)
    })
}
Api.getimageInfo = function (userId, callback) {
    var selectSql = 'SELECT id,title,click,add_time,content FROM `imggroup` WHERE id=?'
    db.query(selectSql, [userId], function (err, res) {
        if (err) {
            return callback(err)
        }
        callback(err, res)
    })
}
Api.getcomments = function (artid, pageindex, callback) {
    var selectSql = 'SELECT * FROM `comments` WHERE artid=? LIMIT ?,2'
    db.query(selectSql, [artid, (pageindex-1)*2], function (err, res) {
        if (err) {
            return callback(err)
        }
        callback(err, res)
    })
}
Api.addcomments = function (artid, conent, username, add_time, callback) {
    var selectSql = "INSERT INTO comments VALUES(?,?,?,?)"
    db.query(selectSql, [parseInt(artid), conent, username?username:null, add_time], function (err, res) {
        if (err) {
            return callback(err)
        }
        callback(err, res)
    })
}
Api.getgoods = function (pageindex, callback) {
    var selectSql = 'SELECT id,title,add_time,zhaiyao,img_url,sell_price,market_price,stock_quantity FROM `commoditys` LIMIT ?,4'
    db.query(selectSql, [(pageindex - 1) * 4], function (err, res) {
        if (err) {
            return callback(err)
        }
        callback(err, res)
    })
}
Api.getdesc = function (userId, callback) {
    var selectSql = 'SELECT title,content from commoditys WHERE id=?'
    db.query(selectSql, [userId], function (err, res) {
        if (err) {
            return callback(err)
        }
        callback(err, res)
    })
}
Api.getshopcarlist = function (ids, callback) {
    var selectSql = 'SELECT * FROM `cart` WHERE id in('+ids+')'
    db.query(selectSql, function (err, res) {
        if (err) {
            return callback(err)
        }
        callback(err, res)
    })
}
Api.getinfo = function (id, callback) {
    var selectSql = "SELECT id,title,add_time,goods_no,stock_quantity,market_price,sell_price FROM `commoditys` WHERE id=?"
    db.query(selectSql, [id], function (err, res) {
        if (err) {
            return callback(err)
        }
        callback(err, res)
    })
}
Api.getprodlist = function (callback) {
    var selectSql = "SELECT * FROM `brands`"
    db.query(selectSql,function (err, res) {
        if (err) {
            return callback(err)
        }
        callback(err, res)
    })
}
Api.delproduct = function (Id, callback) {
    var selectSql = "DELETE FROM brands WHERE id=?"
    db.query(selectSql, [Id], function (err, res) {
        if (err) {
            return callback(err)
        }
        callback(err, res)
    })
}
Api.addproduct = function (name, ctime, callback) {
    var selectSql = "INSERT INTO brands(`name`,`ctime`) VALUES(?,?)"
    db.query(selectSql, [name, ctime], function (err, res) {
        if (err) {
            return callback(err)
        }
        callback(err, res)
    })
}
module.exports = Api
