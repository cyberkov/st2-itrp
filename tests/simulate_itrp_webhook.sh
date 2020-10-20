curl -X POST -0 -v -H 'Content-Type: application/json; charset=utf-8' \
http://localhost/api/v1/webhooks/itrp?st2-api-key=$ST2_API_KEY \
--data-binary @- << EOF
{
      "account": "https://mydomain.at",
      "person_name": "John Doe",
      "account_id": "myaccount",
      "object_id": 88969,
      "payload": {
        "status": "assigned",
        "source": "recurrent",
        "member": null,
        "audit_line_id": 3733238,
        "team": {
          "sourceID": "10",
          "account": {
            "id": "myaccount",
            "name": "Parts unlimited"
          },
          "id": 35,
          "name": "Operations"
        }
      },
      "webhook_id": 144,
      "person_id": 39967,
      "event": "task.create",
      "name": "Stackstorm"
    }
EOF
