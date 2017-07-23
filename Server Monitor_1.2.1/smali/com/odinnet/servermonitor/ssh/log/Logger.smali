.class public Lcom/odinnet/servermonitor/ssh/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static enabled:Z

.field public static logger:Lcom/odinnet/servermonitor/ssh/DebugLogger;


# instance fields
.field private className:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/odinnet/servermonitor/ssh/log/Logger;->enabled:Z

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/odinnet/servermonitor/ssh/log/Logger;->logger:Lcom/odinnet/servermonitor/ssh/DebugLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1, "x"    # Ljava/lang/Class;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/log/Logger;->className:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static final getLogger(Ljava/lang/Class;)Lcom/odinnet/servermonitor/ssh/log/Logger;
    .locals 1
    .param p0, "x"    # Ljava/lang/Class;

    .prologue
    .line 29
    new-instance v0, Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-direct {v0, p0}, Lcom/odinnet/servermonitor/ssh/log/Logger;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/odinnet/servermonitor/ssh/log/Logger;->enabled:Z

    return v0
.end method

.method public final log(ILjava/lang/String;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-boolean v1, Lcom/odinnet/servermonitor/ssh/log/Logger;->enabled:Z

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    sget-object v0, Lcom/odinnet/servermonitor/ssh/log/Logger;->logger:Lcom/odinnet/servermonitor/ssh/DebugLogger;

    .line 49
    .local v0, "target":Lcom/odinnet/servermonitor/ssh/DebugLogger;
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/log/Logger;->className:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/odinnet/servermonitor/ssh/DebugLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
