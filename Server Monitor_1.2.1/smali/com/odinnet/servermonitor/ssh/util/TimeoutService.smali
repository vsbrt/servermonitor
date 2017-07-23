.class public Lcom/odinnet/servermonitor/ssh/util/TimeoutService;
.super Ljava/lang/Object;
.source "TimeoutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odinnet/servermonitor/ssh/util/TimeoutService$1;,
        Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutThread;,
        Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;
    }
.end annotation


# static fields
.field private static final log:Lcom/odinnet/servermonitor/ssh/log/Logger;

.field private static timeoutThread:Ljava/lang/Thread;

.field private static final todolist:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 23
    sput-object p0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$400()Lcom/odinnet/servermonitor/ssh/log/Logger;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    return-object v0
.end method

.method public static final addTimeoutHandler(JLjava/lang/Runnable;)Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;
    .locals 4
    .param p0, "runTime"    # J
    .param p2, "handler"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 118
    new-instance v0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;-><init>(JLjava/lang/Runnable;Lcom/odinnet/servermonitor/ssh/util/TimeoutService$1;)V

    .line 120
    .local v0, "token":Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;
    sget-object v1, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    monitor-enter v1

    .line 122
    :try_start_0
    sget-object v2, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v2, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 125
    sget-object v2, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 126
    sget-object v2, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 133
    :goto_0
    monitor-exit v1

    .line 135
    return-object v0

    .line 129
    :cond_0
    new-instance v2, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutThread;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutThread;-><init>(Lcom/odinnet/servermonitor/ssh/util/TimeoutService$1;)V

    sput-object v2, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    .line 130
    sget-object v2, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 131
    sget-object v2, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static final cancelTimeoutHandler(Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;)V
    .locals 2
    .param p0, "token"    # Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;

    .prologue
    .line 140
    sget-object v0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 144
    sget-object v1, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 145
    sget-object v1, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 146
    :cond_0
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
