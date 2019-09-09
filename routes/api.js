var express = require('express'),
    router = express.Router(),
    moment = require('moment'),
    Api = require('../models/api')

function checkUserLogin(req, res, next) {
    if (!req.session.user) {
        return res.send({ "error": 400, "message": "未登录"})
    }
    next()
}
// router.get("/ha", function(req, res) {
//     News.queryNews(1, function (err, data) {
//         if (err) return res.send({ "error": 403, "message": "数据库异常" })
//         res.send(data)
//     })
// })
router.get("/getnew", function (req, res) {
    console.log(JSON.stringify(req.session))
    Api.queryNews(req.query.newid, function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常"})
        res.send({ status: 0, message: data })
    })
})
router.get("/getnewslist", function (req, res) {
    Api.selectAll(function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常" })
        res.send({ status: 0, message: data })
    })
})
router.get("/getimages", function (req, res) {
    console.log(JSON.stringify(req.session))
    Api.getimages(req.query.cateid, function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常" })
        res.send({status:0,message:data})
    })
})
router.get("/getimagecategory", function (req, res) {
    Api.getimagecategory(function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常" })
        res.send({ status: 0, message: data })
    })
})
router.get("/getthumimages", function (req, res) {
    console.log(JSON.stringify(req.session))
    Api.getthumimages(req.query.id, function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常" })
        res.send({ status: 0, message: data })
    })
})
router.get("/getimageInfo", function (req, res) {
    console.log(JSON.stringify(req.session))
    Api.getimageInfo(req.query.id, function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常" })
        res.send({ status: 0, message: data })
    })
})
router.get("/getcomments", function (req, res) {
    console.log(JSON.stringify(req.session))
    Api.getcomments(req.query.artid, req.query.pageindex, function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常" })
        res.send({ status: 0, message: data })
    })
})
router.post("/postcomment", function (req, res) {
    console.log(req.body)
    Api.addcomments(req.body.artid, req.body.content, req.body.username,moment().format("YYYY-MM-DD HH:mm:ss"), function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常" })
        res.send({ status: 0, message: "评论提交成功" })
    })
})
router.get("/getgoods", function (req, res) {
    console.log(JSON.stringify(req.session))
    Api.getgoods(req.query.pageindex, function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常" })
        res.send({ status: 0, message: data })
    })
})
router.get("/goods/getdesc", function (req, res) {
    console.log(JSON.stringify(req.session))
    Api.getdesc(req.query.id, function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常" })
        res.send({ status: 0, message: data })
    })
})
router.get("/goods/getshopcarlist", function (req, res) {
    
    Api.getshopcarlist(req.query.ids, function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常" })
        res.send({ status: 0, message: data })
    })
})
router.get("/goods/getinfo", function (req, res) {

    Api.getinfo(req.query.id, function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常" })
        res.send({ status: 0, message: data })
    })
})
router.get("/getprodlist", function (req, res) {

    Api.getprodlist(function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常" })
        res.send({ status: 0, message: data })
    })
})
router.get("/delproduct", function (req, res) {

    Api.delproduct(req.query.id, function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常" })
        res.send({ status: 0, message: "删除记录成功" })
    })
})
router.post("/addproduct", function (req, res) {
    console.log(req.body)
    Api.addproduct(req.body.name, moment().format("YYYY-MM-DD HH:mm:ss"), function (err, data) {
        if (err) return res.send({ "error": 403, "message": "数据库异常" })
        res.send({ status: 0, message: "添加数据成功" })
    })
})
module.exports = router