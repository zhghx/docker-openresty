--ngx.header.content_type="text/plain;charset=utf8"
ngx.header.content_type="application/json;charset=utf8"
local cjson = require("cjson")
local mysql = require("resty.mysql")
local uri_args = ngx.req.get_uri_args()
local id = uri_args["id"]

local db, err = mysql:new()
-- if not db then
-- 	ngx.say('{"failed to instantiate mysql":"'..err..'"}')
-- 	return
-- end
-- 
-- db:set_timeout(3000)
-- 
-- local props = {
-- 	host = "192.168.19.129",
-- 	port = 3306,
-- 	database = "commerce_ad",
-- 	user = "root",
-- 	password = "MySQL_6468",
-- 	charset = "utf8"
-- }
-- 
-- local ok, err, errcode, sqlstate = db:connect(props)
-- 
-- if not ok then
-- 	ngx.say('{"err":"'..err..'", "errcode":"'..errcode..'", "sqlstate":"'..sqlstate..'"}')
-- 	return
-- end
-- 
-- local select_sql = "select url, pic_pos from tb_ad where status = '1' and category_id = "..id.." order by sort_order"
-- res, err, errcode, sqlstate = db:query(select_sql)
-- if not res then
-- 	ngx.say('{"err":"'..err..'", "errcode":"'..errcode..'", "sqlstate":"'..sqlstate..'"}')
-- 	return
-- end
-- db:close()
-- 
-- local redis = require("resty.redis")
-- local red = redis:new()
-- red:set_timeout(2000)
-- local ip = "192.168.19.129"
-- local port = 6379
-- red:connect(ip, port)
-- red:set("content_"..id, cjson.encode(res))
-- red:close()

-- ngx.say('[{"MySQL":"'..select_sql..'", "flag":"true"}]')
ngx.say('[{"MySQL":"Test OK", "flag":"true"}]')
