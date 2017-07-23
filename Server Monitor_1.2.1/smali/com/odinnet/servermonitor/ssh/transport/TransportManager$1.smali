.class Lcom/odinnet/servermonitor/ssh/transport/TransportManager$1;
.super Ljava/lang/Object;
.source "TransportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->initialize(Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;Lcom/odinnet/servermonitor/ssh/DHGexParameters;ILjava/security/SecureRandom;Lcom/odinnet/servermonitor/ssh/ProxyData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$1;->this$0:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 470
    :try_start_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$1;->this$0:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->receiveLoop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :cond_0
    :goto_0
    # getter for: Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->access$200()Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 481
    # getter for: Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->access$200()Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v3

    const/16 v4, 0x32

    const-string v5, "Receive thread: back from receiveLoop"

    invoke-virtual {v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 485
    :cond_1
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$1;->this$0:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    iget-object v3, v3, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->km:Lcom/odinnet/servermonitor/ssh/transport/KexManager;

    if-eqz v3, :cond_2

    .line 489
    :try_start_1
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$1;->this$0:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    iget-object v3, v3, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->km:Lcom/odinnet/servermonitor/ssh/transport/KexManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->handleMessage([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 496
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$1;->this$0:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    iget-object v3, v3, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 498
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$1;->this$0:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    iget-object v3, v3, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;

    .line 501
    .local v1, "he":Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
    :try_start_2
    iget-object v3, v1, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;->mh:Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;->handleMessage([BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 496
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 472
    .end local v1    # "he":Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
    .end local v2    # "i":I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 474
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$1;->this$0:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v3, v0, v4}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 476
    # getter for: Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->access$200()Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 477
    # getter for: Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->access$200()Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v3

    const/16 v4, 0xa

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive thread: error in receiveLoop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    goto :goto_0

    .line 507
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    :cond_3
    return-void

    .line 503
    .restart local v1    # "he":Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
    :catch_1
    move-exception v3

    goto :goto_3

    .line 491
    .end local v1    # "he":Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
    .end local v2    # "i":I
    :catch_2
    move-exception v3

    goto :goto_1
.end method
