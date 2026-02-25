return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                basedpyright = {
                    settings = {
                        basedpyright = {
                            analysis = {
                                -- Disable specific "noisy" hints
                                typeCheckingMode = "basic", -- Options: "off", "basic", "standard", "strict"
                                diagnosticSeverityOverrides = {
                                    reportUnusedImport = "none",
                                    reportUnusedVariable = "none",
                                    reportGeneralTypeIssues = "none",
                                    -- Disable the "hint" that a variable is unknown
                                    reportUnknownVariableType = "none",
                                    reportUnknownMemberType = "none",
                                    reportUnknownArgumentType = "none",
                                },
                            },
                        },
                    },
                },
            },
        },
    },
}
