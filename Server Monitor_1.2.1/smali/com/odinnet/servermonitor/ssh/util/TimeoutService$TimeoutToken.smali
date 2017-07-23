.class public Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;
.super Ljava/lang/Object;
.source "TimeoutService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odinnet/servermonitor/ssh/util/TimeoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeoutToken"
.end annotation


# instance fields
.field private handler:Ljava/lang/Runnable;

.field private runTime:J


# direct methods
.method private constructor <init>(JLjava/lang/Runnable;)V
    .locals 0
    .param p1, "runTime"    # J
    .param p3, "handler"    # Ljava/lang/Runnable;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;->runTime:J

    .line 35
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;->handler:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/Runnable;Lcom/odinnet/servermonitor/ssh/util/TimeoutService$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/lang/Runnable;
    .param p4, "x2"    # Lcom/odinnet/servermonitor/ssh/util/TimeoutService$1;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;-><init>(JLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;)J
    .locals 2
    .param p0, "x0"    # Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;->runTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;->handler:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 40
    move-object v0, p1

    check-cast v0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;

    move-object v1, v0

    .line 41
    .local v1, "t":Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;
    iget-wide v2, p0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;->runTime:J

    iget-wide v4, v1, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;->runTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 42
    const/4 v2, 0x1

    .line 45
    :goto_0
    return v2

    .line 43
    :cond_0
    iget-wide v2, p0, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;->runTime:J

    iget-wide v4, v1, Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;->runTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 44
    const/4 v2, 0x0

    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method
