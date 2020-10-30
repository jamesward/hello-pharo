(ZnServer defaultOn: 8080)
    logToTranscript;
    onRequestRespond: [ :request |
        ZnResponse ok: (ZnEntity text: 'hello, world') ];
    start.
