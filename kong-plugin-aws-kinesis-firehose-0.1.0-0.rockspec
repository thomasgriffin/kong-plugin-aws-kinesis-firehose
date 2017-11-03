-- Luarocks rockspec details
package = "kong-plugin-aws-kinesis-firehose"
version = "0.1.0-0"
supported_platforms = {"linux", "macosx"}
source = {
	url = "git@github.com:thomasgriffin/kong-plugin-aws-kinesis-firehose.git",
	tag = "0.1.0"
}
description = {
	summary = "Kong plugin that proxies requests directly to an AWS Kinesis Firehose stream.",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1",
	"jsonpath"
}
local pluginName = "aws-kinesis-firehose"
build = {
	type = "builtin",
	modules = {
		["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
		["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
		["kong.plugins."..pluginName..".jsontransformer"] = "kong/plugins/"..pluginName.."/jsontransformer.lua"
	}
}