# Model Context Protocol (MCP) in query-rs

This document explains how to integrate and use MCP servers within `query-rs` to give the AI additional capabilities like filesystem access, web search, and more.

## How to Add MCP Servers

You can add MCP servers in **two ways**: directly via the TUI command line while the app is running, or by editing your `config.json` manually.

### 1. Using the TUI (Recommended)
While `query-rs` is running, press `/` to focus the command line and type:

```bash
/mcp add <name> <command> [args...]
```

**Example (Filesystem Server):**
This gives the AI access to read/write files in a specific directory:
```bash
/mcp add filesystem npx -y @modelcontextprotocol/server-filesystem /home/femboi/Projects
```

**Example (Memory/RAG Server):**
```bash
/mcp add memory npx -y @modelcontextprotocol/server-memory
```

### 2. Editing `config.json`
You can manually add servers to your config file located at `~/.config/query.rs/config.json`:

```json
{
  "mcp_servers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "/home/femboi/Projects"],
      "env": {}
    }
  }
}
```

## Recommended MCP Servers

The **Model Context Protocol** has a growing ecosystem. Here are some of the most useful ones to get started:

1.  **Filesystem (`@modelcontextprotocol/server-filesystem`)**: Allows the AI to explore your codebase, read files, and write code directly to your disk.
2.  **Google Search (`@modelcontextprotocol/server-google-search`)**: Gives the AI real-time web search capabilities.
3.  **Postgres/MySQL**: If you're working with databases, there are servers to let the AI inspect schemas and run queries.
4.  **GitHub**: Allows the AI to manage issues, pull requests, and repository data.

You can find more official and community servers on the [MCP GitHub Organization](https://github.com/modelcontextprotocol/servers) or [Smithery.ai](https://smithery.ai/).
