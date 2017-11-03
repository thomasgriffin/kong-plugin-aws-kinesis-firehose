return {
	fields = {
		timeout = {
			type = "number",
			default = 60000,
			required = true
		},
		keepalive = {
			type = "number",
			default = 60000,
			required = true
		},
		aws_key = {
			type = "string",
			required = true
		},
		aws_secret = {
			type = "string",
			required = true
		},
		aws_region = {
			type = "string",
			required = true
		},
		aws_debug = {
			type = "boolean",
			default = false,
			required = false
		}
		stream_name = {
			type = "string",
			required = true
		},
		data_template = {
			type = "string",
			required = false
		}
	}
}