"use strict";

exports.on = function (event /* String */ ) {
  return function (cb /* Event.Event -> Array String -> Effect.Effect Unit */ ) {
    return function () {
      require('electron').ipcMain.on(event, function () {
        var args = Array.prototype.slice.call(arguments);
        cb(args.shift())(args)();
      });
    };
  };
};

exports.handle = function (event /* String */ ) {
  return function (cb /* Event.Event -> Array String -> Effect.Effect Type */ ) {
    return function () {
      require('electron').ipcMain.handle(event, function () {
        var args = Array.prototype.slice.call(arguments);
        return cb(args.shift())(args)();
      });
    };
  };
}
