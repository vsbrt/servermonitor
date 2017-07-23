.class public Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;


# instance fields
.field authenticated:Z

.field banner:Ljava/lang/String;

.field connectionClosed:Z

.field initDone:Z

.field isPartialSuccess:Z

.field packets:Ljava/util/Vector;

.field remainingMethods:[Ljava/lang/String;

.field tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;


# direct methods
.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V
    .locals 2
    .param p1, "tm"    # Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 42
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->connectionClosed:Z

    .line 46
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 49
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->authenticated:Z

    .line 50
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->initDone:Z

    .line 54
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    .line 55
    return-void
.end method

.method private initialize(Ljava/lang/String;)Z
    .locals 9
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xff

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 123
    iget-boolean v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->initDone:Z

    if-nez v4, :cond_2

    .line 125
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v4, p0, v7, v8}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->registerMessageHandler(Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;II)V

    .line 127
    new-instance v2, Lcom/odinnet/servermonitor/ssh/packets/PacketServiceRequest;

    const-string v4, "ssh-userauth"

    invoke-direct {v2, v4}, Lcom/odinnet/servermonitor/ssh/packets/PacketServiceRequest;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, "sr":Lcom/odinnet/servermonitor/ssh/packets/PacketServiceRequest;
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/PacketServiceRequest;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 130
    new-instance v3, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestNone;

    const-string v4, "ssh-connection"

    invoke-direct {v3, v4, p1}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestNone;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v3, "urn":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestNone;
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestNone;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 133
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v0

    .line 134
    .local v0, "msg":[B
    new-instance v4, Lcom/odinnet/servermonitor/ssh/packets/PacketServiceAccept;

    array-length v5, v0

    invoke-direct {v4, v0, v7, v5}, Lcom/odinnet/servermonitor/ssh/packets/PacketServiceAccept;-><init>([BII)V

    .line 135
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v0

    .line 137
    iput-boolean v6, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->initDone:Z

    .line 139
    aget-byte v4, v0, v7

    const/16 v5, 0x34

    if-ne v4, v5, :cond_0

    .line 141
    iput-boolean v6, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->authenticated:Z

    .line 142
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v4, p0, v7, v8}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->removeMessageHandler(Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;II)V

    move v4, v6

    .line 157
    .end local v0    # "msg":[B
    .end local v2    # "sr":Lcom/odinnet/servermonitor/ssh/packets/PacketServiceRequest;
    .end local v3    # "urn":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestNone;
    :goto_0
    return v4

    .line 146
    .restart local v0    # "msg":[B
    .restart local v2    # "sr":Lcom/odinnet/servermonitor/ssh/packets/PacketServiceRequest;
    .restart local v3    # "urn":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestNone;
    :cond_0
    aget-byte v4, v0, v7

    const/16 v5, 0x33

    if-ne v4, v5, :cond_1

    .line 148
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;

    array-length v4, v0

    invoke-direct {v1, v0, v7, v4}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;-><init>([BII)V

    .line 150
    .local v1, "puf":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 151
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result v4

    iput-boolean v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->isPartialSuccess:Z

    move v4, v7

    .line 152
    goto :goto_0

    .line 155
    .end local v1    # "puf":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected SSH message (type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    .end local v0    # "msg":[B
    .end local v2    # "sr":Lcom/odinnet/servermonitor/ssh/packets/PacketServiceRequest;
    .end local v3    # "urn":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestNone;
    :cond_2
    iget-boolean v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->authenticated:Z

    goto :goto_0
.end method


# virtual methods
.method public authenticateInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/odinnet/servermonitor/ssh/InteractiveCallback;)Z
    .locals 13
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "submethods"    # [Ljava/lang/String;
    .param p3, "cb"    # Lcom/odinnet/servermonitor/ssh/InteractiveCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    :try_start_0
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 334
    const-string v0, "keyboard-interactive"

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authentication method keyboard-interactive not supported by the server at this stage."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local p1    # "user":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 397
    .local v7, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 398
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Keyboard-interactive authentication failed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 338
    .end local v7    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;
    .restart local p1    # "user":Ljava/lang/String;
    :cond_0
    if-nez p2, :cond_1

    .line 339
    const/4 v0, 0x0

    :try_start_1
    new-array p2, v0, [Ljava/lang/String;

    .line 341
    :cond_1
    new-instance v12, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestInteractive;

    const-string v0, "ssh-connection"

    invoke-direct {v12, v0, p1, p2}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestInteractive;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 344
    .local v12, "ua":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestInteractive;
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v12}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestInteractive;->getPayload()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 348
    :goto_0
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v6

    .line 350
    .local v6, "ar":[B
    const/4 v0, 0x0

    aget-byte v0, v6, v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_2

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->authenticated:Z

    .line 353
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, p0, v1, v2}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->removeMessageHandler(Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;II)V

    .line 354
    const/4 v0, 0x1

    .line 364
    :goto_1
    return v0

    .line 357
    :cond_2
    const/4 v0, 0x0

    aget-byte v0, v6, v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_3

    .line 359
    new-instance v8, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;

    const/4 v0, 0x0

    array-length v1, v6

    invoke-direct {v8, v6, v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;-><init>([BII)V

    .line 361
    .local v8, "puf":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;
    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 362
    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 364
    const/4 v0, 0x0

    goto :goto_1

    .line 367
    .end local v8    # "puf":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;
    :cond_3
    const/4 v0, 0x0

    aget-byte v0, v6, v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_5

    .line 369
    new-instance v9, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;

    const/4 v0, 0x0

    array-length v1, v6

    invoke-direct {v9, v6, v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 375
    .local v9, "pui":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;
    :try_start_2
    invoke-virtual {v9}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->getInstruction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->getNumPrompts()I

    move-result v3

    invoke-virtual {v9}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->getPrompt()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->getEcho()[Z

    move-result-object v5

    move-object/from16 v0, p3

    invoke-interface/range {v0 .. v5}, Lcom/odinnet/servermonitor/ssh/InteractiveCallback;->replyToChallenge(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Z)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 383
    .local v11, "responses":[Ljava/lang/String;
    if-nez v11, :cond_4

    .line 384
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Your callback may not return NULL!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    .end local v11    # "responses":[Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 380
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exception in callback."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .end local p1    # "user":Ljava/lang/String;
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 386
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "responses":[Ljava/lang/String;
    .restart local p1    # "user":Ljava/lang/String;
    :cond_4
    new-instance v10, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoResponse;

    invoke-direct {v10, v11}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoResponse;-><init>([Ljava/lang/String;)V

    .line 387
    .local v10, "puir":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoResponse;
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v10}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoResponse;->getPayload()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    goto/16 :goto_0

    .line 392
    .end local v9    # "pui":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;
    .end local v10    # "puir":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoResponse;
    .end local v11    # "responses":[Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SSH message (type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v2, v6, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public authenticateNone(Ljava/lang/String;)Z
    .locals 3
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    :try_start_0
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 278
    iget-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->authenticated:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 280
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 282
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 283
    new-instance v1, Ljava/io/IOException;

    const-string v2, "None authentication failed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method public authenticatePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 291
    :try_start_0
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 293
    const-string v4, "password"

    invoke-virtual {p0, v4}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 294
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Authentication method password not supported by the server at this stage."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 323
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v4, v1, v7}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 324
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Password authentication failed."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 296
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;
    :cond_0
    :try_start_1
    new-instance v3, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;

    const-string v4, "ssh-connection"

    invoke-direct {v3, v4, p1, p2}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .local v3, "ua":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 299
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v0

    .line 301
    .local v0, "ar":[B
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    const/16 v5, 0x34

    if-ne v4, v5, :cond_1

    .line 303
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->authenticated:Z

    .line 304
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    const/4 v5, 0x0

    const/16 v6, 0xff

    invoke-virtual {v4, p0, v5, v6}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->removeMessageHandler(Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;II)V

    move v4, v8

    .line 315
    :goto_0
    return v4

    .line 308
    :cond_1
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    const/16 v5, 0x33

    if-ne v4, v5, :cond_2

    .line 310
    new-instance v2, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-direct {v2, v0, v4, v5}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;-><init>([BII)V

    .line 312
    .local v2, "puf":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 313
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result v4

    iput-boolean v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->isPartialSuccess:Z

    move v4, v7

    .line 315
    goto :goto_0

    .line 318
    .end local v2    # "puf":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected SSH message (type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public authenticatePublicKey(Ljava/lang/String;Ljava/lang/Object;Ljava/security/SecureRandom;)Z
    .locals 24
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "rnd"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 175
    const-string v5, "publickey"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 176
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Authentication method publickey not supported by the server at this stage."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :catch_0
    move-exception v5

    move-object/from16 v19, v5

    .line 267
    .local v19, "e":Ljava/io/IOException;
    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->printStackTrace()V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v19

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 269
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Publickey authentication failed."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 178
    .end local v19    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;
    :cond_0
    :try_start_1
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;

    move v5, v0

    if-eqz v5, :cond_1

    .line 180
    move-object/from16 v0, p2

    check-cast v0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;

    move-object/from16 v21, v0

    .line 182
    .local v21, "pk":Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;
    invoke-virtual/range {v21 .. v21}, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->getPublicKey()Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;

    move-result-object v5

    invoke-static {v5}, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->encodeSSHDSAPublicKey(Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;)[B

    move-result-object v8

    .line 184
    .local v8, "pk_enc":[B
    new-instance v23, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct/range {v23 .. v23}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 186
    .local v23, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->getSessionIdentifier()[B

    move-result-object v16

    .line 188
    .local v16, "H":[B
    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 189
    const/16 v5, 0x32

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 190
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 191
    const-string v5, "ssh-connection"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 192
    const-string v5, "publickey"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 193
    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBoolean(Z)V

    .line 194
    const-string v5, "ssh-dss"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 195
    const/4 v5, 0x0

    array-length v6, v8

    move-object/from16 v0, v23

    move-object v1, v8

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 197
    invoke-virtual/range {v23 .. v23}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v20

    .line 199
    .local v20, "msg":[B
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->generateSignature([BLcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;Ljava/security/SecureRandom;)Lcom/odinnet/servermonitor/ssh/signature/DSASignature;

    move-result-object v18

    .line 201
    .local v18, "ds":Lcom/odinnet/servermonitor/ssh/signature/DSASignature;
    invoke-static/range {v18 .. v18}, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->encodeSSHDSASignature(Lcom/odinnet/servermonitor/ssh/signature/DSASignature;)[B

    move-result-object v9

    .line 203
    .local v9, "ds_enc":[B
    new-instance v4, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;

    const-string v5, "ssh-connection"

    const-string v7, "ssh-dss"

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 205
    .local v4, "ua":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v5, v0

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 244
    .end local v9    # "ds_enc":[B
    .end local v18    # "ds":Lcom/odinnet/servermonitor/ssh/signature/DSASignature;
    .end local v21    # "pk":Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v17

    .line 245
    .local v17, "ar":[B
    const/4 v5, 0x0

    aget-byte v5, v17, v5

    const/16 v6, 0x34

    if-ne v5, v6, :cond_3

    .line 247
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->authenticated:Z

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0xff

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->removeMessageHandler(Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;II)V

    .line 249
    const/4 v5, 0x1

    .line 259
    :goto_1
    return v5

    .line 207
    .end local v4    # "ua":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;
    .end local v8    # "pk_enc":[B
    .end local v16    # "H":[B
    .end local v17    # "ar":[B
    .end local v20    # "msg":[B
    .end local v23    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_1
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;

    move v5, v0

    if-eqz v5, :cond_2

    .line 209
    move-object/from16 v0, p2

    check-cast v0, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;

    move-object/from16 v21, v0

    .line 211
    .local v21, "pk":Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;
    invoke-virtual/range {v21 .. v21}, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;->getPublicKey()Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;

    move-result-object v5

    invoke-static {v5}, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->encodeSSHRSAPublicKey(Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;)[B

    move-result-object v8

    .line 213
    .restart local v8    # "pk_enc":[B
    new-instance v23, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct/range {v23 .. v23}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 215
    .restart local v23    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->getSessionIdentifier()[B

    move-result-object v16

    .line 217
    .restart local v16    # "H":[B
    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 218
    const/16 v5, 0x32

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 219
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 220
    const-string v5, "ssh-connection"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 221
    const-string v5, "publickey"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 222
    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBoolean(Z)V

    .line 223
    const-string v5, "ssh-rsa"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 224
    const/4 v5, 0x0

    array-length v6, v8

    move-object/from16 v0, v23

    move-object v1, v8

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 227
    invoke-virtual/range {v23 .. v23}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v20

    .line 229
    .restart local v20    # "msg":[B
    invoke-static/range {v20 .. v21}, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->generateSignature([BLcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;)Lcom/odinnet/servermonitor/ssh/signature/RSASignature;

    move-result-object v18

    .line 231
    .local v18, "ds":Lcom/odinnet/servermonitor/ssh/signature/RSASignature;
    invoke-static/range {v18 .. v18}, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->encodeSSHRSASignature(Lcom/odinnet/servermonitor/ssh/signature/RSASignature;)[B

    move-result-object v15

    .line 233
    .local v15, "rsa_sig_enc":[B
    new-instance v4, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;

    const-string v11, "ssh-connection"

    const-string v13, "ssh-rsa"

    move-object v10, v4

    move-object/from16 v12, p1

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 236
    .restart local v4    # "ua":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v5, v0

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    goto/16 :goto_0

    .line 241
    .end local v4    # "ua":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;
    .end local v8    # "pk_enc":[B
    .end local v15    # "rsa_sig_enc":[B
    .end local v16    # "H":[B
    .end local v18    # "ds":Lcom/odinnet/servermonitor/ssh/signature/RSASignature;
    .end local v20    # "msg":[B
    .end local v21    # "pk":Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;
    .end local v23    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unknown private key type returned by the PEM decoder."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 252
    .restart local v4    # "ua":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;
    .restart local v8    # "pk_enc":[B
    .restart local v16    # "H":[B
    .restart local v17    # "ar":[B
    .restart local v20    # "msg":[B
    .restart local v23    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_3
    const/4 v5, 0x0

    aget-byte v5, v17, v5

    const/16 v6, 0x33

    if-ne v5, v6, :cond_4

    .line 254
    new-instance v22, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;-><init>([BII)V

    .line 256
    .local v22, "puf":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;
    invoke-virtual/range {v22 .. v22}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 257
    invoke-virtual/range {v22 .. v22}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 259
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 262
    .end local v22    # "puf":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;
    :cond_4
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected SSH message (type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v7, v17, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "PEMPrivateKey"    # [C
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "rnd"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p2, p3}, Lcom/odinnet/servermonitor/ssh/crypto/PEMDecoder;->decode([CLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p4}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;Ljava/lang/Object;Ljava/security/SecureRandom;)Z

    move-result v1

    return v1
.end method

.method deQueue()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    monitor-enter v3

    .line 74
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 76
    iget-boolean v2, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->connectionClosed:Z

    if-eqz v2, :cond_0

    .line 77
    new-instance v2, Ljava/io/IOException;

    const-string v4, "The connection is closed."

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 92
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 82
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    goto :goto_0

    .line 89
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .line 90
    .local v1, "res":[B
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 91
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1
.end method

.method getNextMessage()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->deQueue()[B

    move-result-object v0

    .line 101
    .local v0, "msg":[B
    aget-byte v2, v0, v4

    const/16 v3, 0x35

    if-eq v2, v3, :cond_0

    .line 102
    return-object v0

    .line 104
    :cond_0
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthBanner;

    array-length v2, v0

    invoke-direct {v1, v0, v4, v2}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthBanner;-><init>([BII)V

    .line 106
    .local v1, "sb":Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthBanner;
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthBanner;->getBanner()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->banner:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPartialSuccess()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->isPartialSuccess:Z

    return v0
.end method

.method public getRemainingMethods(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 113
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage([BI)V
    .locals 4
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    monitor-enter v1

    .line 406
    if-nez p1, :cond_0

    .line 408
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->connectionClosed:Z

    .line 417
    :goto_0
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 419
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 421
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->connectionClosed:Z

    .line 422
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error, peer is flooding us with authentication packets."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 424
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 412
    :cond_0
    :try_start_1
    new-array v0, p2, [B

    .line 413
    .local v0, "tmp":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 424
    .end local v0    # "tmp":[B
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    return-void
.end method

.method methodPossible(Ljava/lang/String;)Z
    .locals 3
    .param p1, "methName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    .line 67
    :goto_0
    return v1

    .line 62
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 65
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 67
    goto :goto_0
.end method
