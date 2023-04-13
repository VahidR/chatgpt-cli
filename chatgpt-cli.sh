#!/bin/zsh

function hey_gpt {
    gpt=$(curl https://api.openai.com/v1/chat/completions -s \
        -H "Content-Type: application/json" \
        -H "Authorization: Bearer $OPENAI_API_KEY" \
        -d '{
            "model": "gpt-3.5-turbo",
            "messages": [{"role": "user", "content": "'${1}'"}],
            "temperature": 0.7
        }')  
    printf '%s' "$gpt" | jq -r '.choices[0].message.content'
}

function data_gpt {
    local gpt=$(curl https://api.openai.com/v1/chat/completions -s \
        -H "Content-Type: application/json" \
        -H "Authorization: Bearer $OPENAI_API_KEY" \
        -d '{
            "model": "gpt-3.5-turbo",
            "messages": [{"role": "user", "content": "'${1}'"}],
            "temperature": 0.7
        }' | jq -r '.choices[0].message.content')
    printf '%s' "$gpt"
}