Quadlet for Tryton
==================
The idea is to launch use quadlets and leverage on systemd's funcionality.

Secrets
-------
Make sure you create them before hand:

.. code-block:: bash

    # tryton | postgresql password
    printf 'S0m3 fuck1n6 P4s5w07d.' | podman secret create tryton-postgres-password -


