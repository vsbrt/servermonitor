.class final Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odinnet/servermonitor/ssh/Connection;->connect(Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;II)Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TimeoutState"
.end annotation


# instance fields
.field isCancelled:Z

.field final synthetic this$0:Lcom/odinnet/servermonitor/ssh/Connection;

.field timeoutSocketClosed:Z


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/ssh/Connection;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 732
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;->this$0:Lcom/odinnet/servermonitor/ssh/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;->isCancelled:Z

    .line 735
    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;->timeoutSocketClosed:Z

    return-void
.end method
