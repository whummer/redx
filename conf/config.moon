M = {}

-- redis host
M.redis_host = 'redis.development.svc.cluster.local'
-- redis port
M.redis_port = '6379'
-- redis password
M.redis_password = ''
-- redis sentinel host
M.redis_sentinel_host = 'redis-sentinel.development.svc.cluster.local'
-- redis sentinel port
M.redis_sentinel_port = 26379
-- redis master name
M.redis_master_name = 'mymaster'

-- redis timeout
-- number of milliseconds for redis timeout
M.redis_timeout = 5000

-- keepalive
-- When == 0, don't use keepalive, and close the connection
-- When > 0, is the number of keepalive connection to maintain per nginx worker
M.redis_keepalive_pool_size = 100
-- max idle timeout for keepalive connection, in milliseconds
M.redis_keepalive_max_idle_timeout = 30000

-- the max number of path parts to look up
-- examples
-- 1 = host.com/contact
-- 2 = host.com/contact/us
-- 3 = host.com/contact/us/now
M.max_path_length = 3

-- Session Length
-- Amount of time (in seconds) you wish the session cookie to live
M.session_length = 0

-- Plugin list
-- List of plugins to enable within redx. Plugins are executed in given order below
M.plugins = { 'random' }

M.default_score = 0
return M
