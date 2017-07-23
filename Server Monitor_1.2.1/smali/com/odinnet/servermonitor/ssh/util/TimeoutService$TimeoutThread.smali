.class Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutThread;
.super Ljava/lang/Thread;
.source "TimeoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odinnet/servermonitor/ssh/util/TimeoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeoutThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/odinnet/servermonitor/ssh/util/TimeoutService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/odinnet/servermonitor/ssh/util/TimeoutService$1;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 53
    # getter for: Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->todolist:Ljava/util/LinkedList;
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->access$000()Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 57
    :goto_0
    :try_start_0
    # getter for: Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->todolist:Ljava/util/LinkedList;
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->access$000()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 59
    const/4 v6, 0x0

    # setter for: Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;
    invoke-static {v6}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->access$102(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 60
    monitor-exit v5

    return-void

    .line 63
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 65
    .local v1, "now":J
    # getter for: Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->todolist:Ljava/util/LinkedList;
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->access$000()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;

    .line 67
    .local v4, "tt":Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;
    # getter for: Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;->runTime:J
    invoke-static {v4}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;->access$200(Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    cmp-long v6, v6, v1

    if-lez v6, :cond_1

    .line 73
    :try_start_1
    # getter for: Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->todolist:Ljava/util/LinkedList;
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->access$000()Ljava/util/LinkedList;

    move-result-object v6

    # getter for: Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;->runTime:J
    invoke-static {v4}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;->access$200(Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;)J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v6

    goto :goto_0

    .line 87
    :cond_1
    :try_start_2
    # getter for: Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->todolist:Ljava/util/LinkedList;
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->access$000()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :try_start_3
    # getter for: Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;->handler:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;->access$300(Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 93
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 96
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 97
    # getter for: Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->access$400()Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v6

    const/16 v7, 0x14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exeception in Timeout handler:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "now":J
    .end local v3    # "sw":Ljava/io/StringWriter;
    .end local v4    # "tt":Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6
.end method
