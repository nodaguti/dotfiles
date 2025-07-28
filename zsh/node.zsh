# pnpm
export PNPM_HOME="${HOME}/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# deno
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
if [ -e "${HOME}/.deno" ]; then
  . "${HOME}/.deno/env"
fi
