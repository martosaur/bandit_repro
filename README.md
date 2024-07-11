To reproduce issue:

1. `docker compose up haproxy app`
2. Make a change to lib/plug/heatlh.ex (chane "OK" message for example)
3. Code reload should trigger an error