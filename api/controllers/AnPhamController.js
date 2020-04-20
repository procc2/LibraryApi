"use strict";

const util = require("util");
const mysql = require("mysql");
const db = require("../db");

module.exports = {
  get: (req, res) => {
    let sql = "SELECT * FROM anpham";
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
  getCategoryProduct: (req,res) => {
    let sql = "SELECT * FROM anpham where id_dm = ?";
    db.query(sql,[req.params.categoryId],(err, response) => {
      if (err) throw err;
      res.json(response);
    });
  }
};
