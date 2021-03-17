const express = require('express')
var bodyParser = require('body-parser')

const app = express()
const AssistantV2 = require('ibm-watson/assistant/v2');
const { IamAuthenticator } = require('ibm-watson/auth');
const cors = require('cors')

app.use(cors())
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())

app.post('/', async function (req, res) {
    console.log("Message from server: " + req.body);
    // Here's how you get the data from the front-end.
    var messages = req.body
    // init assistant
    var sessionIdValue;
    var assistantIdValue = '398fd1c8-a06f-4fdc-b9f1-c553d1878907';

    const assistant = new AssistantV2({
        version: '2020-09-24',
        authenticator: new IamAuthenticator({
            apikey: 'tuG9mC6jBr9nSf5DVhHqoB22kDtnUOmTkuRbpaDBuCng',
        }),
        serviceUrl: 'https://api.us-south.assistant.watson.cloud.ibm.com/instances/384648db-6aed-4ceb-871b-321b292ff899',
    });
    // get result from starting assistant service
    try {
        await assistant.createSession({ assistantId: assistantIdValue })
            .then(res =>{
                sessionIdValue = JSON.stringify(res.result, null, 2);
                console.log(sessionIdValue);
            })        
            .catch(err => {
                console.log(err);
              });

        await assistant.message({
            assistantId: assistantIdValue,
            sessionId: sessionIdValue.session_id,
            input: {
              'message_type': 'text',
              'text': messages.text
              }
            })
            .then(res => {
              console.log(JSON.stringify(res.result, null, 2));
            })
            .catch(err => {
              console.log(err);
            });
        //var x = await assistant.message(messages)
        // Send that response back to the front-end
        //console.log(x)
        //res.status(200).send(x)
    }
    catch(e) {
        console.error(e);
        res.status(400).send("BAD")
    }
})

app.listen(3001)