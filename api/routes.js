'use strict';
module.exports = function(app) {
  let anPhamCtrl = require("./controllers/AnPhamController");
  let blanPhamCtrl = require("./controllers/BlAnPhamController");
  let boughtHistoryCtrl = require("./controllers/BoughtHistoryController");
  let categoryCtrl = require("./controllers/CategoryController");
  let userCtrl = require("./controllers/UserController");
  let currentSessionCtrl = require("./controllers/CurrentSessionController");
  let favoriteCtrl = require("./controllers/FavoriteController");
  
  // todoList Routes
  app
    .route("/anpham")
    .get(anPhamCtrl.get)
    .post(anPhamCtrl.store);

  app
    .route("/anpham/:anPhamId")
    .get(anPhamCtrl.detail)
    .put(anPhamCtrl.update)
    .delete(anPhamCtrl.delete);

  //comment
  app
  .route("/comment")
  .get(blanPhamCtrl.get)
  .post(blanPhamCtrl.store);

  app
  .route("/comment/:commentId")
  .get(blanPhamCtrl.detail)
  .put(blanPhamCtrl.update)
  .delete(blanPhamCtrl.delete);

  //boughtHistory
  app
  .route("/boughtHistory")
  .get(boughtHistoryCtrl.detail)
  .post(boughtHistoryCtrl.store);

  //category
  app
  .route("/category")
  .get(categoryCtrl.get)
  .post(categoryCtrl.store);

  app
  .route("/category/:categoryId")
  .get(categoryCtrl.detail)
  .put(categoryCtrl.update)
  .delete(categoryCtrl.delete);

  app
  .route("/category/:categoryId/product")
  .get(anPhamCtrl.getCategoryProduct)

  //user
  app
  .route("/user")
  .get(userCtrl.get)
  .post(userCtrl.store);

  app
  .route("/user/login")
  .get(userCtrl.login);

  app
  .route("/user/:userId")
  .get(userCtrl.detail)
  .put(userCtrl.update)
  .delete(userCtrl.delete);

  //currentSession
  app
  .route("/currentSession")
  .get(currentSessionCtrl.get)
  .post(currentSessionCtrl.store);

  app
  .route("/currentSession/:currentSessionId")
  .get(currentSessionCtrl.detail)
  .put(currentSessionCtrl.update)
  .delete(currentSessionCtrl.delete);

  app
  .route("/favorite")
  .get(favoriteCtrl.detailProduct)
  .post(favoriteCtrl.store)
  .delete(favoriteCtrl.delete)
};