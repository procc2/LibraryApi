"use strict";

const util = require("util");
const mysql = require("mysql");
const db = require("../db");

module.exports = {
  get: (req, res) => {
    let sql = "SELECT * FROM dmanpham";
    db.query(sql, (err, response) => {
      if (err) throw err;
      res.json(response);
    });
  },
  detail: (req, res) => {
    let sql = "SELECT * FROM dmanpham WHERE id_dm = ?";
    console.log(req.params);
    db.query(sql, [req.params.categoryId], (err, response) => {
      if (err) throw err;
      res.json(response[0]);
    });
  },
  update: (req, res) => {
    let data = req.body;
    let categoryId = req.params.categoryId;
    let sql = "UPDATE dmanpham SET ? WHERE id_dm = ?";
    console.log(data)
    console.log(categoryId)
    db.query(sql, [data, categoryId], (err, response) => {
      if (err) throw err;
      res.json({ message: "Update success!" });
    });
  },
  store: (req, res) => {
    let data = req.body;
    console.log([data])
    let sql = "INSERT INTO dmanpham SET ?";
    db.query(sql, [data], (err, response) => {
      if (err) throw err;
      res.json({ message: "Insert success!" });
    });
  },
  delete: (req, res) => {
    let sql = "DELETE FROM dmanpham WHERE id_dm = ?";
    db.query(sql, [req.params.categoryId], (err, response) => {
      if (err) throw err;
      res.json({ message: "Delete success!" });
    });
  }
};
