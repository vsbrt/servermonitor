.class Lcom/odinnet/servermonitor/ssh/Connection$1;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odinnet/servermonitor/ssh/Connection;->connect(Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;II)Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odinnet/servermonitor/ssh/Connection;

.field final synthetic val$state:Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/ssh/Connection;Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/Connection$1;->this$0:Lcom/odinnet/servermonitor/ssh/Connection;

    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/Connection$1;->val$state:Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 787
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection$1;->val$state:Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;

    monitor-enter v0

    .line 789
    :try_start_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection$1;->val$state:Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;

    iget-boolean v1, v1, Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;->isCancelled:Z

    if-eqz v1, :cond_0

    .line 790
    monitor-exit v0

    .line 794
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection$1;->val$state:Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;->timeoutSocketClosed:Z

    .line 792
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection$1;->this$0:Lcom/odinnet/servermonitor/ssh/Connection;

    # getter for: Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;
    invoke-static {v1}, Lcom/odinnet/servermonitor/ssh/Connection;->access$000(Lcom/odinnet/servermonitor/ssh/Connection;)Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-result-object v1

    new-instance v2, Ljava/net/SocketTimeoutException;

    const-string v3, "The connect timeout expired"

    invoke-direct {v2, v3}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 793
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
