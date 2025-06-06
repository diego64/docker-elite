                             ^^^^^^^^^^^^^^^^^^^^^^^

  File "/usr/local/lib/python3.11/site-packages/sqlalchemy/engine/base.py", line 3288, in raw_connection

    return self.pool.connect()

           ^^^^^^^^^^^^^^^^^^^

  File "/usr/local/lib/python3.11/site-packages/sqlalchemy/pool/base.py", line 452, in connect

    return _ConnectionFairy._checkout(self)

           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

  File "/usr/local/lib/python3.11/site-packages/sqlalchemy/pool/base.py", line 1267, in _checkout

    fairy = _ConnectionRecord.checkout(pool)

            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

  File "/usr/local/lib/python3.11/site-packages/sqlalchemy/pool/base.py", line 716, in checkout

    rec = pool._do_get()

          ^^^^^^^^^^^^^^

  File "/usr/local/lib/python3.11/site-packages/sqlalchemy/pool/impl.py", line 169, in _do_get

    with util.safe_reraise():

  File "/usr/local/lib/python3.11/site-packages/sqlalchemy/util/langhelpers.py", line 147, in __exit__

    raise exc_value.with_traceback(exc_tb)

  File "/usr/local/lib/python3.11/site-packages/sqlalchemy/pool/impl.py", line 167, in _do_get

    return self._create_connection()

           ^^^^^^^^^^^^^^^^^^^^^^^^^

  File "/usr/local/lib/python3.11/site-packages/sqlalchemy/pool/base.py", line 393, in _create_connection

    return _ConnectionRecord(self)

           ^^^^^^^^^^^^^^^^^^^^^^^

  File "/usr/local/lib/python3.11/site-packages/sqlalchemy/pool/base.py", line 678, in __init__

    self.__connect()

  File "/usr/local/lib/python3.11/site-packages/sqlalchemy/pool/base.py", line 902, in __connect

    with util.safe_reraise():

  File "/usr/local/lib/python3.11/site-packages/sqlalchemy/util/langhelpers.py", line 147, in __exit__

    raise exc_value.with_traceback(exc_tb)

  File "/usr/local/lib/python3.11/site-packages/sqlalchemy/pool/base.py", line 898, in __connect

    self.dbapi_connection = connection = pool._invoke_creator(self)

                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^

  File "/usr/local/lib/python3.11/site-packages/sqlalchemy/engine/create.py", line 637, in connect

    return dialect.connect(*cargs, **cparams)

           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

  File "/usr/local/lib/python3.11/site-packages/sqlalchemy/engine/default.py", line 615, in connect

    return self.loaded_dbapi.connect(*cargs, **cparams)

           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

  File "/usr/local/lib/python3.11/site-packages/psycopg/connection.py", line 119, in connect

    raise last_ex.with_traceback(None)

sqlalchemy.exc.OperationalError: (psycopg.OperationalError) connection failed: could not connect to server: Connection refused

	Is the server running on host "172.20.0.2" and accepting

	TCP/IP connections on port 5432?
(Background on this error at: https://sqlalche.me/e/20/e3q8)⁠
[2025-06-06 20:00:41 +0000] [10] [INFO] Starting gunicorn 21.0.0
[2025-06-06 20:00:41 +0000] [10] [INFO] Listening at: http://0.0.0.0:5000⁠ (10)
[2025-06-06 20:00:41 +0000] [10] [INFO] Using worker: sync
[2025-06-06 20:00:41 +0000] [11] [INFO] Booting worker with pid: 11