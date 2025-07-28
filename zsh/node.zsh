# pnpm
export PNPM_HOME="${HOME}/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# deno
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
. "${HOME}/.deno/env"
