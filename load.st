"todo: get PORT env var if set otherwise default to 8080"
"OSPlatform current environment getEnv:'PORT'."

(ZnServer defaultOn: 8080)
    logToTranscript;
    onRequestRespond: [ :request |
        ZnResponse ok: (ZnEntity text: 'hello, world') ];
    start.
