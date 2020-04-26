"use strict";

const util = require("util");
const mysql = require("mysql");
const db = require("../db");

module.exports = {
  get: (req, res) => {
    let sql = "SELECT * FROM anpham WHERE 1 = 1";
    if (req.query.special != null) {
      sql += " and dac_biet = 1";
    }
    if (req.query.recent != null) {
      sql += " order by ngay_muon DESC";
    }
    if (req.query.limit) {
      sql += " limit " + req.query.limit;
    }
    db.query(sql, (err, response) => {
      if (err) throw err;
      res.json(response);
    });
  },
  detail: (req, res) => {
    let sql = "SELECT * FROM anpham WHERE id_ap = ?";
    console.log(req.params);
    db.query(sql, [req.params.anPhamId], (err, response) => {
      if (err) throw err;
      res.json(response);
    });
  },
  update: (req, res) => {
    let data = req.body;
    let anPhamId = req.params.anPhamId;
    let sql = "UPDATE anpham SET ? WHERE id_ap = ?";
    console.log(data)
    console.log(anPhamId)
    db.query(sql, [data, anPhamId], (err, response) => {
      if (err) throw err;
      res.json({ message: "Update success!" });
    });
  },
  store: (req, res) => {
    let data = req.body;
    console.log([data])
    let sql = "INSERT INTO anpham SET ?";
    db.query(sql, [data], (err, response) => {
      if (err) throw err;
      res.json({ message: "Insert success!" });
    });
  },
  delete: (req, res) => {
    let sql = "DELETE FROM anpham WHERE id_ap = ?";
    db.query(sql, [req.params.anPhamId], (err, response) => {
      if (err) throw err;
      res.json({ message: "Delete success!" });
    });
  },
  getCategoryProduct: (req, res) => {
    let limit = 18;
    let sql = "SELECT * FROM anpham where id_dm = ?";
    if (req.query.page != null) {
      start = (req.query.page - 1) * limit;
      end = req.query.page * limit;
      sql += " limit ${start},${end}";
    }
    db.query(sql, [req.params.categoryId], (err, response) => {
      if (err) throw err;
      res.json(response);
    });
  }
};
