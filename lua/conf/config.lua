local M = { }
M.redis_host = 'redis.development.svc.cluster.local'
M.redis_port = '6379'
M.redis_password = ''
M.redis_timeout = 5000
M.redis_keepalive_pool_size = 100
M.redis_keepalive_max_idle_timeout = 30000
M.max_path_length = 3
M.session_length = 0
M.default_score = 0
M.plugins = {'random'}
return M
