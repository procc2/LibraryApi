"use strict";

const util = require("util");
const mysql = require("mysql");
const db = require("../db");

module.exports = {
  get: (req, res) => {
    let sql = "SELECT * FROM thanhvien";
    db.query(sql, (err, response) => {
      if (err) throw err;
      res.json(response);
    });
  },
  detail: (req, res) => {
    let sql = "SELECT * FROM thanhvien WHERE id_thanhvien = ?";
    db.query(sql, [req.params.userId], (err, response) => {
      if (err) throw err;
      res.json(response[0]);
    });
  },
  login: (req, res) =>{
    let sql = "SELECT * FROM thanhvien where email = ? and mat_khau = ?";
    db.query(sql, [req.query.email,req.query.password], (err, response) => {
      if (err) throw err;
      res.json(response[0]);
    });
  },
  update: (req, res) => {
    let data = req.body;
    let userId = req.params.userId;
    let sql = "UPDATE thanhvien SET ? WHERE id_thanhvien = ?";
    db.query(sql, [data, userId], (err, response) => {
      if (err) throw err;
      res.json({ message: "Update success!" });
    });
  },
  store: (req, res) => {
    let data = req.body;
    let sql = "INSERT INTO thanhvien SET ?";
    db.query(sql, [data], (err, response) => {
      if (err) throw err;
      res.json({ message: "Insert success!" });
    });
  },
  delete: (req, res) => {
    let sql = "DELETE FROM thanhvien WHERE id_thanhvien = ?";
    db.query(sql, [req.params.userId], (err, response) => {
      if (err) throw err;
      res.json({ message: "Delete success!" });
    });
  }
};
