# chatgpt-cli
A very simple and stupid CLI (bash) interface to ChatGPT to ask a question and ask questions and parse data from the Terminal. 
There is a galaxy of possibilities for adding commands and making it much better. You are welcome to fork and evolve your own...

## Dependencies
You should have **jq** installed.

## How to Configure it
I have defined an environment variable called **OPENAI_API_KEY**. 
Export your API key to this environment variable, and then run the commands below.

## How to use it
Let's say you need to ask ChatGPT about a particular question. Just ask it with the **hey_gpt** command as follows
```bash
➜  ~ hey_gpt "What is the name of the president of the United States?"

As an AI language model, I do not have access to real-time information. As of my last training data, the current President of the United States is Joe Biden.
```
