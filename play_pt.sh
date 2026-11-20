#!/usr/bin/env bash
cd "$(dirname "$0")"
python3 -m http.server 8000 &
SERVER_PID=$!
sleep 0.5
xdg-open http://localhost:8000/index_pt.html
echo "Jogo rodando em http://localhost:8000/index_pt.html"
echo "Pressione [ENTER] nesta janela quando terminar de jogar para fechar o servidor..."
read -r
kill $SERVER_PID
