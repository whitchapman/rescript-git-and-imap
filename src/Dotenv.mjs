// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Dotenv from "dotenv";
import * as Js_dict from "../node_modules/rescript/lib/es6/js_dict.js";

var config = Dotenv.config().parsed;

function get(key) {
  return Js_dict.get(config, key);
}

export {
  config ,
  get ,
}
/* config Not a pure module */
