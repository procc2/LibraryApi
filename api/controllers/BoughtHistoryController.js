"use strict";

const util = require("util");
const mysql = require("mysql");
const db = require("../db");

module.exports = {
  detail: (req, res) => {
    let sql = "SELECT * FROM danhsachapdamua WHERE 1 = 1";
    if (req.query.id_ap){
      sql += " and id_ap = "+ req.query.id_ap;
    }
    if (req.query.id_thanhvien){
      sql += " and id_thanhvien = " + req.query.id_thanhvien;
    }
    console.log(sql);
    db.query(sql, (err, response) => {
      if (err) throw err;
      res.json(response);
    });
  },
  update: (req, res) => {
    let data = req.body;
    let userId = req.params.userId;
    let sql = "UPDATE danhsachapdamua SET ? WHERE id_thanhvien = ?";
    db.query(sql, [data, userId], (err, response) => {
      if (err) throw err;
      res.json({ message: "Update success!" });
    });
  },
  store: (req, res) => {
    let data = req.body;
    console.log(data);
    let sql = "INSERT INTO danhsachapdamua SET ?";
    db.query(sql, [data], (err, response) => {
      if (err) throw err;
      res.json({ message: "Insert success!" });
    });
  },
  delete: (req, res) => {
    let data = req.body;
    let sql = "DELETE FROM danhsachapdamua WHERE id_thanhvien = ? and id_ap = ?";
    console.log(data);
    db.query(sql, [data["id_thanhvien"],data["id_ap"]], (err, response) => {
      if (err) throw err;
      res.json({ message: "Delete success!" });
    });
  }
};
