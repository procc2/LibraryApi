"use strict";

const util = require("util");
const mysql = require("mysql");
const db = require("../db");

module.exports = {
  get: (req, res) => {
    let sql = "SELECT * FROM blanpham";
    db.query(sql, (err, response) => {
      if (err) throw err;
      res.json(response);
    });
  },
  detail: (req, res) => {
    let sql = "SELECT * FROM blanpham WHERE id_bl = ?";
    console.log(req.params);
    db.query(sql, [req.params.commentId], (err, response) => {
      if (err) throw err;
      res.json(response[0]);
    });
  },
  update: (req, res) => {
    let data = req.body;
    let commentId = req.params.commentId;
    let sql = "UPDATE blanpham SET ? WHERE id_bl = ?";
    console.log(data)
    console.log(commentId)
    db.query(sql, [data, commentId], (err, response) => {
      if (err) throw err;
      res.json({ message: "Update success!" });
    });
  },
  store: (req, res) => {
    let data = req.body;
    console.log([data])
    let sql = "INSERT INTO blanpham SET ?";
    db.query(sql, [data], (err, response) => {
      if (err) throw err;
      res.json({ message: "Insert success!" });
    });
  },
  delete: (req, res) => {
    let sql = "DELETE FROM blanpham WHERE id_bl = ?";
    db.query(sql, [req.params.commentId], (err, response) => {
      if (err) throw err;
      res.json({ message: "Delete success!" });
    });
  }
};
